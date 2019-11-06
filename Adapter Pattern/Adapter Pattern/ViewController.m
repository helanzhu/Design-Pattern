//
//  ViewController.m
//  Adapter Pattern
//
//  Created by chenqg on 2019/11/6.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "NetRequestAdaptor.h"
#import "AFNNetRequest.h"

@interface ViewController ()

@property (nonatomic, strong) id<NetRequestProtocol>request;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDictionary *param = [NSDictionary dictionary];
    self.request = [[NetRequestAdaptor alloc]initWithRequest:[AFNNetRequest new]];
    [self.request netRequestWithURL:@"" parameters:param requestType:(RequestPOST) success:^(id result) {
        //成功回调
    } failure:^(NSError *error) {
        //失败回调
    }];
}


@end
