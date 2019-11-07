//
//  ViewController.m
//  Proxy Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "Broker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Broker *broker = [[Broker alloc]init];
    [broker acceptInvitation];
}


@end
