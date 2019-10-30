//
//  HUAWEIPhoneFactory.m
//  FactoryMethodPattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "HUAWEIPhoneFactory.h"
#import "HUAWEIPhone.h"

@implementation HUAWEIPhoneFactory

+ (Phone *)createPhone{
    HUAWEIPhone *phone = [[HUAWEIPhone alloc]init];
    return phone;
}


@end
