//
//  PhoneFactory.h
//  FactoryMethodPattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phone.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhoneFactory : NSObject

+ (Phone *)createPhone;

@end

NS_ASSUME_NONNULL_END
