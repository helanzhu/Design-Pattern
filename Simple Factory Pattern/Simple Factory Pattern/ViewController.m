//
//  ViewController.m
//  Simple Factory Pattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "PhoneFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Phone *iPhone = [PhoneFactory createPhoneWithType:kIPhoneType];
    [iPhone telePhoneCall];
    [iPhone systemInfomation];
    
    Phone *miPhone = [PhoneFactory createPhoneWithType:kMIPhoneType];
    [miPhone telePhoneCall];
    [miPhone systemInfomation];
    
    Phone *huaweiPhone = [PhoneFactory createPhoneWithType:kHUAWEIPhoneType];
    [huaweiPhone telePhoneCall];
    [huaweiPhone systemInfomation];

    
}


@end
