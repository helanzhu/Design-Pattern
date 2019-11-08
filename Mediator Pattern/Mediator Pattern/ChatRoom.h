//
//  ChatRoom.h
//  Mediator Pattern
//
//  Created by chenqg on 2019/11/8.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChatMediatorProtocol.h"
@class ChatUser;

NS_ASSUME_NONNULL_BEGIN

@interface ChatRoom : NSObject<ChatMediatorProtocol>

- (void)addChatUsers:(NSArray<ChatUser*> *)chatUsers;
- (void)sendMessage:(NSString *)message fromChatUser:(ChatUser *)user;

@end

NS_ASSUME_NONNULL_END
