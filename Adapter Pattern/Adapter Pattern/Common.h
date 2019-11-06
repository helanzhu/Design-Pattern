//
//  Common.h
//  Adapter Pattern
//
//  Created by chenqg on 2019/11/6.
//  Copyright © 2019 chenqg. All rights reserved.
//

#ifndef Common_h
#define Common_h

typedef NS_ENUM(NSUInteger, RequestMethodType){
    RequestGET,
    RequestPOST,
};

typedef void (^Success) (id result);
typedef void (^Failure) (NSError *error);

#endif /* Common_h */
