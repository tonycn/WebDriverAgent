//
//  FBWebDriverServerRunner.h
//  WebDriverAgentLib
//
//  Created by jianjun on 2019-02-20.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBWebDriverServerRunner : NSObject

+ (instancetype)sharedRunner;

- (void)startRunner;

- (void)stopRunner;

@end

NS_ASSUME_NONNULL_END
