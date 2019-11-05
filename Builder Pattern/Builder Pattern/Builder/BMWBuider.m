//
//  BMWBuider.m
//  Builder Pattern
//
//  Created by chenqg on 2019/11/4.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "BMWBuider.h"

@implementation BMWBuider

- (instancetype)init{
    if (self = [super init]) {
    
        _car = [[Car alloc] init];
    }
    return self;
}

- (void)buildWheel{
    [_car setWheel:@"BMW Wheel"];

}
- (void)buildShell{
    [_car setShell:@"BMW Shell"];

}
- (void)buildEngine{
    [_car setEngine:@"BMW Engine"];
}

- (Car *)getCar{
    return _car;
}


@end
