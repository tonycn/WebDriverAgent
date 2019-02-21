/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "FBDebugLogDelegateDecorator.h"

#import "FBLogger.h"


@interface FBDebugLogDelegateDecorator ()

@end

@implementation FBDebugLogDelegateDecorator

+ (void)decorateXCTestLogger
{
  
}

- (void)logDebugMessage:(NSString *)logEntry
{
  NSString *debugLogEntry = logEntry;
  static NSString *processName;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    processName = [NSProcessInfo processInfo].processName;
  });
  if ([logEntry rangeOfString:[NSString stringWithFormat:@" %@[", processName]].location != NSNotFound) {
    // Ignoring "13:37:07.638 TestingApp[56374:10997466] " from log entry
    NSUInteger ignoreCharCount = [logEntry rangeOfString:@"]"].location + 2;
    debugLogEntry = [logEntry substringWithRange:NSMakeRange(ignoreCharCount, logEntry.length - ignoreCharCount)];
  }
  [FBLogger verboseLog:debugLogEntry];
//  [self.debugLogger logDebugMessage:logEntry];
  NSLog(logEntry);
}

@end
