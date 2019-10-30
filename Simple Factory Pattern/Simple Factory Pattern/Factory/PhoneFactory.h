//
//  PhoneFactory.h
//  Simple Factory Pattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phone.h"

typedef NS_ENUM(NSUInteger, PhoneType){
    kIPhoneType,
    kMIPhoneType,
    kHUAWEIPhoneType
};

NS_ASSUME_NONNULL_BEGIN

@interface PhoneFactory : NSObject

+ (Phone *)createPhoneWithType:(PhoneType)type;

@end

NS_ASSUME_NONNULL_END
