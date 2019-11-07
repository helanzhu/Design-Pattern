//
//  Circle.m
//  Flyweight Factory
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (void)draw{
    NSLog(@"%p - color:%@ x:%.2f y:%.2f radius:%.f",self,[self getColorWithType:self.colorType],self.x,self.y,self.radius);
}

- (NSString *)getColorWithType:(CircleColorType)type{
    switch (type) {
        case RedColor:
            return @"红色";
            break;
        case BlueColor:
            return @"绿色";
            break;
        case GreenColor:
            return @"黄色";
            break;
        case OrangeColor:
            return @"橘色";
            break;

        default:
            return @"未知颜色";
            break;
    }
}

@end
