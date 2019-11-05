//
//  LoginInputTextField.h
//  Strategy Pattern
//
//  Created by chenqg on 2019/11/5.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginInputTextField : UITextField

@property (nonatomic, strong) InputValidator *inputValidator;

- (BOOL)validate;

@end

NS_ASSUME_NONNULL_END
