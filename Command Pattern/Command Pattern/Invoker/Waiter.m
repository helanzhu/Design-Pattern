//
//  Waiter.m
//  Command Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "Waiter.h"

static Waiter *sharedInstanceValue = nil;

@interface Waiter ()

@property (nonatomic, strong) NSMutableArray *commandArr;

@end

@implementation Waiter

+ (instancetype)sharedInstance {

    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        sharedInstanceValue = [[Waiter alloc] init];
        sharedInstanceValue.commandArr = [NSMutableArray array];
    });
    
    return sharedInstanceValue;
}

- (void)addOrder:(id<CommandProtocol>)command{
    [self.commandArr addObject:command];
}

- (void)submmitOrder {
    for (id <CommandProtocol> command in _commandArr) {
        [command execute];
    }
    [_commandArr removeAllObjects];
}

- (void)cancleOrder:(id <CommandProtocol>)command {
    if ([_commandArr containsObject:command]) {
        [_commandArr removeObject:command];
    } else {
        NSLog(@"菜品制做完成,不可取消了");
    }
}

- (void)cancleAll{
    if (_commandArr.count&&_commandArr) {
        [_commandArr removeAllObjects];
    }else {
        NSLog(@"菜品全部制做完成,不可取消了");
    }
}

@end

