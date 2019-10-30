//
//  HUAWEIPhone.m
//  Simple Factory Pattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "HUAWEIPhone.h"

@implementation HUAWEIPhone

- (void)telePhoneCall{
    NSLog(@"HUAWEI call");
}

- (NSString *)systemInfomation{

    NSString *infor = @"HUAWEI MATE  5G手机";
    return infor;
}

@end
