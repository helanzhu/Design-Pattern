//
//  Car.h
//  Builder Pattern
//
//  Created by chenqg on 2019/11/1.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

@property (nonatomic, copy) NSString *engine;
@property (nonatomic, copy) NSString *wheel;
@property (nonatomic, copy) NSString *shell;

@end

NS_ASSUME_NONNULL_END
