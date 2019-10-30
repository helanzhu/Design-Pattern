//
//  FileManager.h
//  Singleton Pattern
//
//  Created by chenqg on 2019/10/31.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FileManager : NSObject

+ (FileManager *)sharedInstance;

- (void)addFile;

- (void)deleteFile;

@end

NS_ASSUME_NONNULL_END
