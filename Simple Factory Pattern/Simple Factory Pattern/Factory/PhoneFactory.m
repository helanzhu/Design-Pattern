//
//  PhoneFactory.m
//  Simple Factory Pattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "PhoneFactory.h"
#import "iPhone.h"
#import "MIPhone.h"
#import "HUAWEIPhone.h"

@implementation PhoneFactory

+ (Phone *)createPhoneWithType:(PhoneType)type{
    
    switch (type) {
        case kIPhoneType:{
            iPhone *phone = [[iPhone alloc]init];
            return phone;

        }
            break;
        case kMIPhoneType:{
            MIPhone *phone = [[MIPhone alloc]init];
            return phone;

        }
            break;
        
        case kHUAWEIPhoneType:{
            HUAWEIPhone *phone = [[HUAWEIPhone alloc]init];
            return phone;

        }
            break;
            
        default:
            return nil;
            break;
    }
}

@end
