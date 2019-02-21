/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "FBAlert.h"


#import "FBApplication.h"
#import "FBErrorBuilder.h"
#import "FBFindElementCommands.h"
#import "FBLogger.h"


NSString *const FBAlertObstructingElementException = @"FBAlertObstructingElementException";

@interface FBAlert ()
@property (nonatomic, strong) XCUIApplication *application;
@end

@implementation FBAlert

+ (void)throwRequestedItemObstructedByAlertException __attribute__((noreturn))
{
  @throw [NSException exceptionWithName:FBAlertObstructingElementException reason:@"Requested element is obstructed by alert or action sheet" userInfo:@{}];
}

+ (instancetype)alertWithApplication:(XCUIApplication *)application
{
  FBAlert *alert = [FBAlert new];
  alert.application = application;
  return alert;
}

- (BOOL)isPresent
{
//  return self.alertElement.exists;
    return YES;
}

- (NSString *)text
{
//  XCUIElement *alert = self.alertElement;
//  if (!alert) {
//    return nil;
//  }
//  NSArray<XCUIElement *> *staticTextList = [alert descendantsMatchingType:XCUIElementTypeStaticText].allElementsBoundByIndex;
//  NSMutableArray<NSString *> *resultText = [NSMutableArray array];
//  for (XCUIElement *staticText in staticTextList) {
//    if (staticText.wdLabel && staticText.isWDVisible) {
//      [resultText addObject:[NSString stringWithFormat:@"%@", staticText.wdLabel]];
//    }
//  }
//  if (resultText.count) {
//    return [resultText componentsJoinedByString:@"\n"];
//  }
  // return null to reflect the fact there is an alert, but it does not contain any text
  return (id)[NSNull null];
}

- (NSArray *)buttonLabels
{
//  NSMutableArray *value = [NSMutableArray array];
//  XCUIElement *alertElement = self.alertElement;
//  if (!alertElement) {
//    return nil;
//  }
//  NSArray<XCUIElement *> *buttons = [alertElement descendantsMatchingType:XCUIElementTypeButton].allElementsBoundByIndex;
//  for(XCUIElement *button in buttons) {
//    [value addObject:[button wdLabel]];
//  }
//  return value;
    return nil;
}

- (BOOL)acceptWithError:(NSError **)error
{
//  XCUIElement *alertElement = self.alertElement;
//  NSArray<XCUIElement *> *buttons = [alertElement descendantsMatchingType:XCUIElementTypeButton].allElementsBoundByIndex;
//
//  XCUIElement *defaultButton;
//  if (alertElement.elementType == XCUIElementTypeAlert) {
//    defaultButton = buttons.lastObject;
//  } else {
//    defaultButton = buttons.firstObject;
//  }
//  if (!defaultButton) {
//    return
//    [[[FBErrorBuilder builder]
//      withDescriptionFormat:@"Failed to find accept button for alert: %@", alertElement]
//     buildError:error];
//  }
//  return [defaultButton fb_tapWithError:error];
    return YES;
}

- (BOOL)dismissWithError:(NSError **)error
{
//  XCUIElement *cancelButton;
//  XCUIElement *alertElement = self.alertElement;
//  NSArray<XCUIElement *> *buttons = [alertElement descendantsMatchingType:XCUIElementTypeButton].allElementsBoundByIndex;
//
//  if (alertElement.elementType == XCUIElementTypeAlert) {
//    cancelButton = buttons.firstObject;
//  } else {
//    cancelButton = buttons.lastObject;
//  }
//  if (!cancelButton) {
//    return
//    [[[FBErrorBuilder builder]
//      withDescriptionFormat:@"Failed to find dismiss button for alert: %@", alertElement]
//     buildError:error];
//    return NO;
//  }
//  return [cancelButton fb_tapWithError:error];
    return YES;
}

- (BOOL)clickAlertButton:(NSString *)label error:(NSError **)error {
  
//  XCUIElement *alertElement = self.alertElement;
//  NSArray<XCUIElement *> *buttons = [alertElement descendantsMatchingType:XCUIElementTypeButton].allElementsBoundByIndex;
//  XCUIElement *requestedButton;
//
//  for(XCUIElement *button in buttons) {
//    if([[button wdLabel] isEqualToString:label]){
//      requestedButton = button;
//      break;
//    }
//  }
//
//  if(!requestedButton) {
//    return
//    [[[FBErrorBuilder builder]
//      withDescriptionFormat:@"Failed to find button with label %@ for alert: %@", label, alertElement]
//     buildError:error];
//  }
//
//  return [requestedButton fb_tapWithError:error];
    return YES;
}

+ (BOOL)isElementObstructedByAlertView:(XCUIElement *)element alert:(XCUIElement *)alert
{
//  if (!alert.exists) {
//    return NO;
//  }
//  XCElementSnapshot *alertSnapshot = alert.fb_lastSnapshot;
//  XCElementSnapshot *elementSnapshot = element.fb_lastSnapshot;
//  if ([alertSnapshot _isAncestorOfElement:elementSnapshot]) {
//    return NO;
//  }
//  if ([alertSnapshot _matchesElement:elementSnapshot]) {
//    return NO;
//  }
  return YES;
}

- (NSArray<XCUIElement *> *)filterObstructedElements:(NSArray<XCUIElement *> *)elements
{
//  XCUIElement *alertElement = self.alertElement;
//  XCUIElement *element = elements.lastObject;
//  if (!element) {
//    return elements;
//  }
//  NSMutableArray *elementBox = [NSMutableArray array];
//  for (XCUIElement *iElement in elements) {
//    if ([FBAlert isElementObstructedByAlertView:iElement alert:alertElement]) {
//      continue;
//    }
//    [elementBox addObject:iElement];
//  }
//  if (elementBox.count == 0 && elements.count != 0) {
//    [FBAlert throwRequestedItemObstructedByAlertException];
//  }
//  return elementBox.copy;
    return nil;
}

@end
