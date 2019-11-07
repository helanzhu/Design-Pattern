//
//  Command.m
//  Command Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "Command.h"

@implementation Command

- (instancetype)initWithCook:(Cook *)cook{
    if (self = [super init]) {
        self.cook = cook;
    }
    return self;
}

- (void)execute{
    
}

@end
