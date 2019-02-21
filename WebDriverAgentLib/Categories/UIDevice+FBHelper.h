//
//  UIDevice+FBHelper.h
//  WebDriverAgent
//
//  Created by jianjun on 2019-02-21.
//



NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (FBHelper)

- (NSString *)fb_getLocalIPAddress;

- (NSData *)fb_screenshotWithError:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
