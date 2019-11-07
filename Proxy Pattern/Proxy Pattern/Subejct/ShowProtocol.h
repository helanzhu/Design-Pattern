//
//  ShowProtocol.h
//  Proxy Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ShowProtocol <NSObject>

//接受演出邀约
- (void)acceptInvitation;

//拒绝演出邀约
- (void)refuseInvitation;

@end

NS_ASSUME_NONNULL_END
