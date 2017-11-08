//
//  UIViewController+ANHUD.h
//  zhongcaibaotiyu
//
//  Created by Eric on 2017/6/6.
//  Copyright © 2017年 Eric. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TKAlertCenter.h"

@interface UIViewController (ANHUD)

- (void)showLoadingWithMessage:(NSString *)message;
- (void)showFailedWithMessage:(NSString *)message;
- (void)hideLoading;
- (void)showToast:(NSString *)message;
- (void)showToast:(NSString *)message withDuration:(CGFloat)duration;

@end
