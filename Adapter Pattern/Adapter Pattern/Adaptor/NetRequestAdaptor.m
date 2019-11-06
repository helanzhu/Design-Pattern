//
//  NetRequestAdaptor.m
//  Adapter Pattern
//
//  Created by chenqg on 2019/11/6.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "NetRequestAdaptor.h"
#import "AFN_NetRequestProtocol.h"
#import "AFNNetRequest.h"

@implementation NetRequestAdaptor
{
    AFNNetRequest *_request;
}

- (instancetype)initWithRequest:(AFNNetRequest *)request{
    if (self = [super init]) {
        _request = request;
    }
    return self;
}

- (void)netRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters requestType:(RequestMethodType)type success:(Success)success failure:(Failure)failure{
    [_request afn_NetRequestWithURL:url parameters:parameters requestType:type success:success failure:failure];
}


@end
