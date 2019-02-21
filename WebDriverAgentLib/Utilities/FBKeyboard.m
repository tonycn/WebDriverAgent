/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "FBKeyboard.h"

#import "FBApplication.h"
#import "FBConfiguration.h"
#import "FBErrorBuilder.h"
#import "FBRunLoopSpinner.h"
#import "FBMacros.h"
#import "FBLogger.h"
#import "FBConfiguration.h"


@implementation FBKeyboard

+ (BOOL)typeText:(NSString *)text error:(NSError **)error
{
  return [self typeText:text frequency:[FBConfiguration maxTypingFrequency] error:error];
}

+ (BOOL)typeText:(NSString *)text frequency:(NSUInteger)frequency error:(NSError **)error
{
  return YES;
}

+ (BOOL)waitUntilVisibleWithError:(NSError **)error
{
  FBApplication *application = [FBApplication fb_activeApplication];
  
//  if (![application fb_waitUntilFrameIsStable]) {
//    return
//    [[[FBErrorBuilder builder]
//      withDescription:@"Timeout waiting for keybord to stop animating"]
//     buildError:error];
//  }
  return YES;
}

@end
