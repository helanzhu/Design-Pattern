//
//  MIFactory.m
//  Abstract Factory Pattern
//
//  Created by chenqg on 2019/10/31.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "MIFactory.h"
#import "MIPhone.h"
#import "MIComputer.h"

@implementation MIFactory

+ (Phone *)createPhone{
    MIPhone *phone = [[MIPhone alloc]init];
    return phone;
}

+ (Computer *)createComputer{
    MIComputer *computer = [[MIComputer alloc]init];
    return computer;
    
}


@end
