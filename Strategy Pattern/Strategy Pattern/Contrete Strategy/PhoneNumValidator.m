//
//  PhoneNumValidator.m
//  Strategy Pattern
//
//  Created by chenqg on 2019/11/5.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "PhoneNumValidator.h"

@implementation PhoneNumValidator

- (BOOL)validateInput:(UITextField *)textFieldInput{
    
    if (textFieldInput.text.length == 0 || !textFieldInput) {
        self.errorMsg = @"输入为空";
        return NO;
    }else{
        NSString *regexp=@"1[3456789]([0-9]){9}";
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regexp];
        
        BOOL validate = [predicate evaluateWithObject:textFieldInput.text];
        if (validate) {
            self.errorMsg = nil;
        }else{
            self.errorMsg = @"请输入正确的手机号码";
        }
        return validate;
    }
    
}

@end
