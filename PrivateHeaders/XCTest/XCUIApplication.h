//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import <XCTest/XCUIApplication.h>

@class NSArray, NSDictionary, NSString, XCAccessibilityElement, XCApplicationQuery;

@interface XCUIApplication ()
{
    BOOL _accessibilityActive;
    BOOL _ancillary;
    BOOL _eventLoopIsIdle;
    int _processID;
    unsigned long long _state;
    XCUIElement *_keyboard;
    NSArray *_launchArguments;
    NSDictionary *_launchEnvironment;
    NSString *_path;
    NSString *_bundleID;
    XCApplicationQuery *_applicationQuery;
    unsigned long long _generation;
}
@property unsigned long long generation; // @synthesize generation=_generation;
@property BOOL eventLoopIsIdle; // @synthesize eventLoopIsIdle=_eventLoopIsIdle;
@property(retain) XCApplicationQuery *applicationQuery; // @synthesize applicationQuery=_applicationQuery;
@property(readonly, copy) NSString *bundleID; // @synthesize bundleID=_bundleID;
@property(readonly, copy) NSString *path; // @synthesize path=_path;
@property BOOL ancillary; // @synthesize ancillary=_ancillary;
@property(nonatomic) BOOL accessibilityActive; // @synthesize accessibilityActive=_accessibilityActive;
@property(readonly) XCUIElement *keyboard; // @synthesize keyboard=_keyboard;
@property(readonly, nonatomic) long long interfaceOrientation; //TODO tvos
@property(readonly, nonatomic) BOOL running;
@property(nonatomic) int processID; // @synthesize processID=_processID;
@property unsigned long long state; // @synthesize state=_state;
@property(readonly) XCAccessibilityElement *accessibilityElement;

+ (id)keyPathsForValuesAffectingRunning;
+ (id)appWithPID:(int)arg1;

- (void)dismissKeyboard;
- (void)_waitForViewControllerViewDidDisappearWithTimeout:(double)arg1;
- (void)_waitForQuiescence;
- (void)terminate;
- (void)_launchUsingXcode:(BOOL)arg1;
- (void)launch;
- (void)_waitForLaunchProgressViaProxy:(id)arg1;
- (void)_waitForLaunchTokenViaProxy:(id)arg1;
- (id)application;
- (id)description;
- (id)lastSnapshot;
- (id)query;
- (void)clearQuery;
- (unsigned long long)elementType;
- (id)initPrivateWithPath:(id)arg1 bundleID:(id)arg2;
- (id)init;

@end
