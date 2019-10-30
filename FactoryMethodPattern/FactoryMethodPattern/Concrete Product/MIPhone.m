//
//  MIPhone.m
//  Simple Factory Pattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "MIPhone.h"

@implementation MIPhone

- (void)telePhoneCall{
    NSLog(@"XIAOMIPhone call");
}

- (NSString *)systemInfomation{
    NSString *infor = @"xiaomi9 64位操作系统";
    return infor;
}

@end
