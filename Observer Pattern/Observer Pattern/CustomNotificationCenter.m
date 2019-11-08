//
//  CustomNotificationCenter.m
//  Observer Pattern
//
//  Created by chenqg on 2019/11/8.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "CustomNotificationCenter.h"

static NSMutableDictionary *_registerNameDictionary = nil;

@implementation CustomNotificationCenter

+ (void)initialize{
    if (self == [CustomNotificationCenter class]) {
        _registerNameDictionary = [NSMutableDictionary dictionary];
    }
}

+ (void)registerNotificationName:(NSString *)name{
    
    NSHashTable *hasTable = [self existNotificationName:name];
    if (!hasTable) {
        hasTable = [NSHashTable weakObjectsHashTable];
        [_registerNameDictionary setObject:hasTable forKey:name];
    }
    
}

+ (void)removeNotificationName:(NSString *)name{
    if ([self existNotificationName:name]) {
        [_registerNameDictionary removeObjectForKey:name];
    }
}


+ (void)removeObserver:(id <CustomNotificationCenterProtocol>)observer withNotificationName:(NSString *)name{

    NSHashTable *hashTable = [self existNotificationName:name];
    if (hashTable && observer) {
        [hashTable removeObject:observer];
    }
}

+ (void)sendMessage:(id)message withNotificationName:(NSString *)name{

    NSHashTable *hashTable = [self existNotificationName:name];
    if (hashTable) {
        NSEnumerator *enumerator = [hashTable objectEnumerator];
              
              id <CustomNotificationCenterProtocol> observer = nil;
              while (observer = [enumerator nextObject]) {
              
                  if ([observer respondsToSelector:@selector(receivedMessage:notificationName:)]) {
                      [observer receivedMessage:message notificationName:name];
                  }
              }    }

}

+ (void)addObserver:(id<CustomNotificationCenterProtocol>)observer withNotificationName:(NSString *)name{
    
    NSHashTable *hashTable = [self existNotificationName:name];
    [hashTable addObject:observer];
}


#pragma mark - 私有方法
+ (NSHashTable *)existNotificationName:(NSString *)notificationName {
    
    return [_registerNameDictionary objectForKey:notificationName];
}



@end
