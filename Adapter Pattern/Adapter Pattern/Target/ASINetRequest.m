//
//  ASINetRequest.m
//  Adapter Pattern
//
//  Created by chenqg on 2019/11/6.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ASINetRequest.h"

@implementation ASINetRequest

- (void)netRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters requestType:(RequestMethodType)type success:(Success)success failure:(Failure)failure{
    NSLog(@"ASI做网络请求");
}

@end
