//
//  ViewController.m
//  Observer Pattern
//
//  Created by chenqg on 2019/11/8.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "CustomNotificationCenterProtocol.h"
#import "CustomNotificationCenter.h"

#define  Name  @"chenqg"

@interface ViewController ()<CustomNotificationCenterProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [CustomNotificationCenter registerNotificationName:Name];
    
    [CustomNotificationCenter addObserver:self withNotificationName:Name];
    
    [CustomNotificationCenter sendMessage:@"iOS开发" withNotificationName:Name];
}

- (void)receivedMessage:(id)message notificationName:(NSString *)notificationName{
    NSLog(@"message = %@", message);
}


@end
