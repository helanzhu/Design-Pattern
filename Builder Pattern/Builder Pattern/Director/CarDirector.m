//
//  CarDirector.m
//  Builder Pattern
//
//  Created by chenqg on 2019/11/1.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "CarDirector.h"

@implementation CarDirector
{
    CarBuilder *_carBuilder;
}


- (Car *)assemblingCarWithBuilder:(CarBuilder *)carBuilder{
    _carBuilder = carBuilder;
    [_carBuilder buildWheel];
    [_carBuilder buildShell];
    [_carBuilder buildEngine];

    return [_carBuilder getCar];

}

@end
