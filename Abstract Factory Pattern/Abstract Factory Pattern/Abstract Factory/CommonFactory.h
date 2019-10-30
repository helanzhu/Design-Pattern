//
//  CommonFactory.h
//  Abstract Factory Pattern
//
//  Created by chenqg on 2019/10/31.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phone.h"
#import "Computer.h"

NS_ASSUME_NONNULL_BEGIN

@interface CommonFactory : NSObject

+ (Phone *)createPhone;

+ (Computer *)createComputer;

@end

NS_ASSUME_NONNULL_END
