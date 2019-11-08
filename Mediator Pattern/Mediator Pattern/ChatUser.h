//
//  ChatUser.h
//  Mediator Pattern
//
//  Created by chenqg on 2019/11/8.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChatRoom.h"

NS_ASSUME_NONNULL_BEGIN

@interface ChatUser : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, strong) ChatRoom *chatRoom;

- (instancetype)initWithName:(NSString *)name chatRoom:(ChatRoom *)chatRoom;

- (void)sendMessage:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
