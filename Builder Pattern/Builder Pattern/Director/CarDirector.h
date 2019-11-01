//
//  CarDirector.h
//  Builder Pattern
//
//  Created by chenqg on 2019/11/1.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface CarDirector : NSObject

- (Car *)assemblingCarWithBuilder:(CarBuilder *)carBuilder;


@end

NS_ASSUME_NONNULL_END
