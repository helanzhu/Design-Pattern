//
//  PhoneProtocol.h
//  Simple Factory Pattern
//
//  Created by chenqg on 2019/10/30.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PhoneProtocol <NSObject>


// 打电话

- (void)telePhoneCall;

// 返回手机系统描述信息
 
- (NSString *)systemInfomation;


@end

NS_ASSUME_NONNULL_END
