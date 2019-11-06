//
//  AFNNetRequest.m
//  Adapter Pattern
//
//  Created by chenqg on 2019/11/6.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "AFNNetRequest.h"

@implementation AFNNetRequest

- (void)afn_NetRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters requestType:(RequestMethodType)type success:(Success)success failure:(Failure)failure{
    NSLog(@"AFN做网络请求");

}

@end
