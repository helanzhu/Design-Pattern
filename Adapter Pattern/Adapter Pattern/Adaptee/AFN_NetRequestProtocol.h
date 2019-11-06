//
//  AFN_NetRequestProtocol.m
//  Adapter Pattern
//
//  Created by chenqg on 2019/11/6.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Common.h"

@protocol AFN_NetRequestProtocol <NSObject>

- (void)afn_NetRequestWithURL:(NSString*)url parameters:(NSDictionary *)parameters requestType:(RequestMethodType)type  success:(Success)success failure:(Failure)failure;

@end
