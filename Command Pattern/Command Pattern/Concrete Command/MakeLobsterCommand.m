//
//  MakeLobsterCommand.m
//  Command Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "MakeLobsterCommand.h"

@implementation MakeLobsterCommand

- (void)execute{
    [self.cook makeLobster];
}

@end
