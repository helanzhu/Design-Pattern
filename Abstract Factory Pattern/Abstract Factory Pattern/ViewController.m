//
//  ViewController.m
//  Abstract Factory Pattern
//
//  Created by chenqg on 2019/10/31.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "AppleFactory.h"
#import "HUAWEIComputer.h"
#import "MIComputer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Phone *iphone = [AppleFactory createPhone];
    [iphone phoneSystemInfomation];
    Computer *macBook = [AppleFactory createComputer];
    [macBook computerSystemInfomation];
    
}


@end
