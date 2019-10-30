//
//  iPhone.m
//  Simple Factory Pattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "iPhone.h"

@implementation iPhone

- (void)telePhoneCall{
    NSLog(@"iphone call");
}

- (NSString *)systemInfomation{
    NSString *infor = @"iphone11 64位操作系统";
    return infor;
}

@end
