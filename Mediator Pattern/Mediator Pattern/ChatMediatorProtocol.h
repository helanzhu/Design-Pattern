//
//  ChatMediatorProtocol.h
//  Mediator Pattern
//
//  Created by chenqg on 2019/11/8.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ChatMediatorProtocol <NSObject>

//聊天室 发消息
- (void)sendMessage:(NSString *)message;

//聊天室 接收消息
- (void)receiveMessage:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
