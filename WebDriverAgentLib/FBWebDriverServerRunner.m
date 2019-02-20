//
//  FBWebDriverServerRunner.m
//  WebDriverAgentLib
//
//  Created by jianjun on 2019-02-20.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "FBWebDriverServerRunner.h"

@implementation FBWebDriverServerRunner

+ (void)setUp
{
  [FBDebugLogDelegateDecorator decorateXCTestLogger];
  [FBConfiguration disableRemoteQueryEvaluation];
  [super setUp];
}

/**
 Never ending test used to start WebDriverAgent
 */
- (void)testRunner
{
  FBWebServer *webServer = [[FBWebServer alloc] init];
  webServer.delegate = self;
  [webServer startServing];
}

#pragma mark - FBWebServerDelegate

- (void)webServerDidRequestShutdown:(FBWebServer *)webServer
{
  [webServer stopServing];
}

@end
