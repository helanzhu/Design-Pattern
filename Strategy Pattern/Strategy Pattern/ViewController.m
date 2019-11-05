//
//  ViewController.m
//  Strategy Pattern
//
//  Created by chenqg on 2019/11/5.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "LoginInputTextField.h"
#import "EmailValidator.h"
#import "PhoneNumValidator.h"

@interface ViewController ()<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet LoginInputTextField *phoneNumTextField;
@property (strong, nonatomic) IBOutlet LoginInputTextField *emailTextField;
- (IBAction)click:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.phoneNumTextField setInputValidator:[PhoneNumValidator new]];
    self.phoneNumTextField.delegate = self;
    
    [self.emailTextField setInputValidator:[EmailValidator new]];
    self.emailTextField.delegate = self;
    
}

#pragma mark - 文本框代理

- (void)textFieldDidEndEditing:(UITextField *)textField {

    LoginInputTextField *loginField = (LoginInputTextField *)textField;
    
    if ([loginField validate] == NO) {
        NSLog(@"输入的手机号或者邮箱无效,此处暂不做详细判断了 - %@",loginField.inputValidator.errorMsg);
    }
}



- (IBAction)click:(UIButton *)sender {
    [self.view endEditing:YES];
}

@end
