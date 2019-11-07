//
//  MakeAbaloneCommand.m
//  Command Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "MakeAbaloneCommand.h"

@implementation MakeAbaloneCommand

- (void)execute{
    [self.cook makeAbalone];
}

@end
