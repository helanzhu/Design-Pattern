//
//  Broker.m
//  Proxy Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "Broker.h"
#import "StarActor.h"

@interface Broker ()

@property (nonatomic, strong) StarActor *star;

@end

@implementation Broker

- (instancetype)init{
    if (self = [super init]) {
        self.star = [[StarActor alloc]init];
    }
    return self;
}

- (void)acceptInvitation{
    NSLog(@"查看近段时间档期");
    [self.star acceptInvitation];
}

- (void)refuseInvitation{
    NSLog(@"查看近段时间档期");
    [self.star refuseInvitation];
}


@end
