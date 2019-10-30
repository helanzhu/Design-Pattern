//
//  AppleFactory.m
//  Abstract Factory Pattern
//
//  Created by chenqg on 2019/10/31.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "AppleFactory.h"
#import "iPhone.h"
#import "MacComputer.h"

@implementation AppleFactory

+ (Phone *)createPhone{
    iPhone *phone = [[iPhone alloc]init];
    return phone;
}

+ (Computer *)createComputer{
    MacComputer *computer = [[MacComputer alloc]init];
    return computer;
    
}

@end
