//
//  CheckTypingProtocol.h
//  Strategy Pattern
//
//  Created by chenqg on 2019/11/5.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol InputValidatorProtocol <NSObject>

@optional

- (BOOL)validateInput:(UITextField *)textFieldInput;

@end

NS_ASSUME_NONNULL_END
