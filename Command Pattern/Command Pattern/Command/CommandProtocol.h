//
//  CommandProtocol.h
//  Command Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CommandProtocol <NSObject>

- (void)execute;

@end

NS_ASSUME_NONNULL_END
