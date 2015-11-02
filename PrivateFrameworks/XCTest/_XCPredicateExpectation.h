/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import <XCTWebDriverAgentLib/XCTestExpectation.h>

@class NSPredicate, NSTimer;

@interface _XCPredicateExpectation : XCTestExpectation
{
    id _object;
    NSPredicate *_predicate;
    CDUnknownBlockType _handler;
    NSTimer *_timer;
}

@property (atomic, copy) CDUnknownBlockType handler;
@property (atomic, copy) NSPredicate *predicate;
@property (atomic, retain) id object;
- (void)_considerFulfilling;
- (void)startObserving;
- (void)dealloc;

@end