//
//  CarBuilder.h
//  Builder Pattern
//
//  Created by chenqg on 2019/11/1.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

NS_ASSUME_NONNULL_BEGIN

@interface CarBuilder : NSObject
{
    Car *_car;
}

- (void)buildWheel;
- (void)buildShell;
- (void)buildEngine;

- (Car *)getCar;

@end

NS_ASSUME_NONNULL_END
