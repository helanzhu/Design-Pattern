//
//  Command.h
//  Command Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"
#import "Cook.h"

NS_ASSUME_NONNULL_BEGIN

@interface Command : NSObject<CommandProtocol>

@property (nonatomic, strong) Cook *cook;

- (instancetype)initWithCook:(Cook *)cook;

@end

NS_ASSUME_NONNULL_END
