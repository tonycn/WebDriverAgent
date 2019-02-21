//
//  FBWebDriverServerRunner.m
//  WebDriverAgentLib
//
//  Created by jianjun on 2019-02-20.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "FBWebDriverServerRunner.h"
#import "FBWebServer.h"
#import "FBConfiguration.h"

@interface FBWebDriverServerRunner ()
@property (nonatomic, strong) FBWebServer *webServer;
@end

@implementation FBWebDriverServerRunner

+ (instancetype)sharedRunner {
    static FBWebDriverServerRunner *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[FBWebDriverServerRunner alloc] init];
    });
    return _sharedInstance;
}

/**
 Never ending test used to start WebDriverAgent
 */
- (void)startRunner
{
  FBWebServer *webServer = [[FBWebServer alloc] init];
  webServer.delegate = self;
  [webServer startServing];
  self.webServer = webServer;
}

- (void)stopRunner
{
  [self.webServer stopServing];
}

#pragma mark - FBWebServerDelegate

- (void)webServerDidRequestShutdown:(FBWebServer *)webServer
{
  [webServer stopServing];
}

@end
