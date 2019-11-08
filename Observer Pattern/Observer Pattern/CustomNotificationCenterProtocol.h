//
//  CustomNotificationCenterProtocol.h
//  Observer Pattern
//
//  Created by chenqg on 2019/11/8.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CustomNotificationCenterProtocol <NSObject>

- (void)receivedMessage:(id)message notificationName:(NSString *)notificationName;

@end

NS_ASSUME_NONNULL_END
