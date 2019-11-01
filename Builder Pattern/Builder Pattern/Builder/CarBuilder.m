//
//  CarBuilder.m
//  Builder Pattern
//
//  Created by chenqg on 2019/11/1.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "CarBuilder.h"

@implementation CarBuilder

- (void)buildWheel{
    NSLog(@"buildWheel");

}
- (void)buildShell{
    NSLog(@"buildSheel");

}
- (void)buildEngine{
    NSLog(@"buildEngine");
}

- (Car *)getCar{
    return nil;
}

@end
