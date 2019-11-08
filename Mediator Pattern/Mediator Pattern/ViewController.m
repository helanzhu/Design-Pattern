//
//  ViewController.m
//  Mediator Pattern
//
//  Created by chenqg on 2019/11/8.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "ChatRoom.h"
#import "ChatUser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ChatRoom *chatRoom = [[ChatRoom alloc]init];
    
    ChatUser *lily = [[ChatUser alloc]initWithName:@"lily" chatRoom:chatRoom];
    ChatUser *mary = [[ChatUser alloc]initWithName:@"mary" chatRoom:chatRoom];
    ChatUser *jack = [[ChatUser alloc]initWithName:@"jack" chatRoom:chatRoom];
    
    [chatRoom addChatUsers:@[lily,mary,jack]];
    
    [lily sendMessage:@"你好,我的名字叫lily"];
    [mary sendMessage:@"你好,我的名字叫mary"];
    [jack sendMessage:@"你好,我的名字叫jack"];

}


@end
