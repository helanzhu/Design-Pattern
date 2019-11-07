//
//  Waiter.h
//  Command Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Waiter : NSObject

+ (instancetype)sharedInstance;

//点菜
- (void)addOrder:(id<CommandProtocol>)command;

//点好 开始制做
- (void)submmitOrder;

//取消某样菜品
- (void)cancleOrder:(id<CommandProtocol>)command;

//全部取消
- (void)cancleAll;


@end

NS_ASSUME_NONNULL_END
