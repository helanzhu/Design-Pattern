//
//  Phone.m
//  Simple Factory Pattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "Phone.h"

@implementation Phone

- (void)telePhoneCall{
    
    NSLog(@"phone call");
}

- (NSString *)systemInfomation{
    NSString *infor = @"phone";
    return infor;
}

@end
