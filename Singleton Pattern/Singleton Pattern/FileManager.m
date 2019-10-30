//
//  FileManager.m
//  Singleton Pattern
//
//  Created by chenqg on 2019/10/31.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "FileManager.h"

static FileManager *_sharedInstance = nil;

@implementation FileManager

+ (FileManager *)sharedInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[super allocWithZone:NULL]init];
    });
    return _sharedInstance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    return [FileManager sharedInstance];
}

- (id)copyWithZone:(struct _NSZone *)zone{
    return [FileManager sharedInstance];

}

- (id)mutableCopyWithZone:(NSZone *)zone{
    return [FileManager sharedInstance];
}

- (void)addFile{
    NSLog(@"添加文件");
}

- (void)deleteFile{
    NSLog(@"删除文件");

}

@end
