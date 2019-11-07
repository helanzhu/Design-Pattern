//
//  Circle.h
//  Flyweight Factory
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShapeProtocol.h"

typedef NS_ENUM(NSUInteger, CircleColorType){
    RedColor = 1,
    BlueColor,
    GreenColor,
    OrangeColor
};

NS_ASSUME_NONNULL_BEGIN

@interface Circle : NSObject<ShapeProtocol>

@property (nonatomic, assign) CircleColorType colorType;
@property (nonatomic, assign) double x;
@property (nonatomic, assign) double y;
@property (nonatomic, assign) double radius;

@end

NS_ASSUME_NONNULL_END
