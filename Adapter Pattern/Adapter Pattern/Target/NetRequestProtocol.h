//
//  NetRequestProtocol.m
//  Adapter Pattern
//
//  Created by chenqg on 2019/11/6.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Common.h"

@protocol NetRequestProtocol <NSObject>

- (void)netRequestWithURL:(NSString*)url parameters:(NSDictionary *)parameters requestType:(RequestMethodType)type  success:(Success)success failure:(Failure)failure;

@end
