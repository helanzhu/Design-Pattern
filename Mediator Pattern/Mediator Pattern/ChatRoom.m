//
//  ChatRoom.m
//  Mediator Pattern
//
//  Created by chenqg on 2019/11/8.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ChatRoom.h"
#import "ChatUser.h"

@interface ChatRoom ()

@property (nonatomic, strong) NSArray<ChatUser*> *chatUsers;

@end

@implementation ChatRoom

- (instancetype)init{
    if (self = [super init]) {
        _chatUsers = [NSArray array];
    }
    return self;
}

- (void)addChatUsers:(NSArray<ChatUser *> *)chatUsers{
    _chatUsers = chatUsers;
}

- (void)sendMessage:(NSString *)message{
    NSLog(@"%@",message);
}

- (void)receiveMessage:(NSString *)message{
    NSLog(@"%@",message);
}

- (void)sendMessage:(NSString *)message fromChatUser:(ChatUser *)user{
    
    if (!_chatUsers||_chatUsers.count == 0) {
        return;
    }
    NSString *sendMessage = [NSString stringWithFormat:@"%@ has sendmessage %@",user.name,message];
    [self sendMessage:sendMessage];

    [_chatUsers enumerateObjectsUsingBlock:^(ChatUser * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj != user) {
            NSString *receiveMessage = [NSString stringWithFormat:@"%@ has receiveMessage %@",obj.name,message];
            [self receiveMessage:receiveMessage];
        }
        
    }];
}

@end
