//
//  CustomNotificationCenter.h
//  Observer Pattern
//
//  Created by chenqg on 2019/11/8.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomNotificationCenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface CustomNotificationCenter : NSObject

+ (void)registerNotificationName:(NSString *)name;

+ (void)addObserver:(id <CustomNotificationCenterProtocol>)observer withNotificationName:(NSString *)name;

+ (void)sendMessage:(id)message withNotificationName:(NSString *)name;

+ (void)removeNotificationName:(NSString *)name;

+ (void)removeObserver:(id <CustomNotificationCenterProtocol>)observer withNotificationName:(NSString *)name;

@end


NS_ASSUME_NONNULL_END
