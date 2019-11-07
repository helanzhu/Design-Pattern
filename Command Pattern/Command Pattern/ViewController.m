//
//  ViewController.m
//  Command Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "Cook.h"
#import "Waiter.h"
#import "MakeLobsterCommand.h"
#import "MakeAbaloneCommand.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Waiter *waiter = [Waiter sharedInstance];
    Cook *cook = [[Cook alloc] init];
    MakeLobsterCommand *lobsterCommand = [[MakeLobsterCommand alloc] initWithCook:cook];
    MakeAbaloneCommand *abaloneCommand = [[MakeAbaloneCommand alloc] initWithCook:cook];
    
    [waiter addOrder:lobsterCommand];
    [waiter addOrder:abaloneCommand];
    [waiter submmitOrder];
//    [waiter cancleOrder:lobsterCommand];
    [waiter cancleAll];

}


@end
