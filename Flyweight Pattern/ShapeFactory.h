//
//  ShapeFactory.h
//  Flyweight Factory
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"

NS_ASSUME_NONNULL_BEGIN

@interface ShapeFactory : NSObject

- (Circle *)createCircleWithColorType:(CircleColorType)colorType;

@end

NS_ASSUME_NONNULL_END
