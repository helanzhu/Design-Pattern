//
//  MIPhoneFactory.m
//  FactoryMethodPattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "MIPhoneFactory.h"
#import "MIPhone.h"

@implementation MIPhoneFactory

+ (Phone *)createPhone{
    MIPhone *phone = [[MIPhone alloc]init];
    return phone;
}

@end
