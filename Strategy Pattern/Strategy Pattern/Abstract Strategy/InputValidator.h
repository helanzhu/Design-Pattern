//
//  InputValidator.h
//  Strategy Pattern
//
//  Created by chenqg on 2019/11/5.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputValidatorProtocol.h"

@interface InputValidator : NSObject<InputValidatorProtocol>

@property (nonatomic, copy) NSString *errorMsg;

@end

