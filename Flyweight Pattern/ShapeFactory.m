//
//  ShapeFactory.m
//  Flyweight Factory
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ShapeFactory.h"

@implementation ShapeFactory
{
    NSMutableDictionary *_poolDic;
}

- (instancetype)init{
    if (self = [super init]) {
        _poolDic = [NSMutableDictionary dictionaryWithCapacity:4];
    }
    return self;
}

- (Circle *)createCircleWithColorType:(CircleColorType)colorType{
    Circle *circle = [_poolDic objectForKey:@(colorType)];
    if (!circle) {
        circle = [[Circle alloc]init];
        circle.colorType = colorType;
        [_poolDic setObject:circle forKey:@(colorType)];
    }
    return circle;
}

@end
