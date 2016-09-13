//
//  UIViewController+TopMostController.m
//  RCTFBSDK
//
//  Created by Shrey Gupta on 12/09/16.
//  Copyright © 2016 Facebook,Inc. All rights reserved.
//

#import "UIViewController+TopMostController.h"

@implementation UIViewController (TopMostController)
- (UIViewController*) topMostController {
    UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    
    return topController;
}
@end
