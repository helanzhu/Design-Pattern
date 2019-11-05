//
//  LoginInputTextField.m
//  Strategy Pattern
//
//  Created by chenqg on 2019/11/5.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "LoginInputTextField.h"

@implementation LoginInputTextField

- (BOOL)validate{
   return [self.inputValidator validateInput:self];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
