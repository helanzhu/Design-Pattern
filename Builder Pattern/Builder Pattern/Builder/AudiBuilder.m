//
//  AudiBuilder.m
//  Builder Pattern
//
//  Created by chenqg on 2019/11/1.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "AudiBuilder.h"

@implementation AudiBuilder

- (instancetype)init{
    if (self = [super init]) {
    
        _car = [[Car alloc] init];
    }
    return self;
}

- (void)buildWheel{
    [_car setWheel:@"Audi Wheel"];

}
- (void)buildShell{
    [_car setShell:@"Audi Shell"];

}
- (void)buildEngine{
    [_car setEngine:@"Audi Engine"];
}

- (Car *)getCar{
    return _car;
}


@end
