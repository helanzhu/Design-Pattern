//
//  NetRequestAdaptor.h
//  Adapter Pattern
//
//  Created by chenqg on 2019/11/6.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetRequestProtocol.h"
@class AFNNetRequest;

NS_ASSUME_NONNULL_BEGIN

@interface NetRequestAdaptor : NSObject<NetRequestProtocol>

- (instancetype)initWithRequest:(AFNNetRequest *)request;


@end

NS_ASSUME_NONNULL_END
