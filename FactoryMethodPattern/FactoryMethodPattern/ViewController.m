//
//  ViewController.m
//  FactoryMethodPattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "iPhoneFactory.h"
#import "HUAWEIPhoneFactory.h"
#import "MIPhoneFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Phone *iphone = [iPhoneFactory createPhone];
    [iphone telePhoneCall];
    [iphone systemInfomation];
    
    Phone *miPhone = [MIPhoneFactory createPhone];
    [miPhone telePhoneCall];
    [miPhone systemInfomation];
    
    Phone *huaweiPhone = [HUAWEIPhoneFactory createPhone];
    [huaweiPhone telePhoneCall];
    [huaweiPhone systemInfomation];

}


@end
