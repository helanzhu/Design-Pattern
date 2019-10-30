//
//  iPhoneFactory.m
//  FactoryMethodPattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "iPhoneFactory.h"
#import "iPhone.h"

@implementation iPhoneFactory

+ (Phone *)createPhone{
    iPhone *phone = [[iPhone alloc]init];
    return phone;
}


@end
