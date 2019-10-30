//
//  HUAWEIFactory.m
//  Abstract Factory Pattern
//
//  Created by chenqg on 2019/10/31.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "HUAWEIFactory.h"
#import "HUAWEIPhone.h"
#import "HUAWEIComputer.h"

@implementation HUAWEIFactory

+ (Phone *)createPhone{
    HUAWEIPhone *phone = [[HUAWEIPhone alloc]init];
    return phone;
}

+ (Computer *)createComputer{
    HUAWEIComputer *computer = [[HUAWEIComputer alloc]init];
    return computer;
    
}


@end
