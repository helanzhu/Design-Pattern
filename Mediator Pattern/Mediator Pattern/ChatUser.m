//
//  ChatUser.m
//  Mediator Pattern
//
//  Created by chenqg on 2019/11/8.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ChatUser.h"

@interface ChatUser ()

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) ChatRoom *chatRoom;

@end

@implementation ChatUser

- (instancetype)initWithName:(NSString *)name chatRoom:(ChatRoom *)chatRoom{
    if (self = [super init]) {
        self.name = name;
        self.chatRoom = chatRoom;
    }
    return self;
}

- (void)sendMessage:(NSString *)message{
    
    [self.chatRoom sendMessage:message fromChatUser:self];
}

@end
