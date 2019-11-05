//
//  EmailValidator.m
//  Strategy Pattern
//
//  Created by chenqg on 2019/11/5.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "EmailValidator.h"

@implementation EmailValidator

- (BOOL)validateInput:(UITextField *)textFieldInput{
    
    if (textFieldInput.text.length == 0 || !textFieldInput) {
        self.errorMsg = @"输入为空";
        return NO;
    }else{
        NSString *regexp = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regexp];
        BOOL validate = [predicate evaluateWithObject:textFieldInput.text];
        if (validate) {
            self.errorMsg = nil;
        }else{
            self.errorMsg = @"请输入正确的邮箱";
        }

        return validate;
    }


}

@end
