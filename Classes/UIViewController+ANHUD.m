//
//  UIViewController+ANHUD.m
//  zhongcaibaotiyu
//
//  Created by Eric on 2017/6/6.
//  Copyright © 2017年 Eric. All rights reserved.
//

#import "UIViewController+ANHUD.h"


@implementation UIViewController (ANHUD)


- (void)showLoadingWithMessage:(NSString *)message{
//    [SVProgressHUD showWithStatus:message];
//    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeGradient];
    
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
    [SVProgressHUD showWithStatus:message];
}
- (void)showFailedWithMessage:(NSString *)message{
    [SVProgressHUD setMaximumDismissTimeInterval:2.0];
    [SVProgressHUD showErrorWithStatus:message];
}
- (void)hideLoading{
    [SVProgressHUD dismiss];
}
- (void)showToast:(NSString*)message{
    [[TKAlertCenter defaultCenter] postAlertWithMessage:message];
}
- (void)showToast:(NSString*)message withDuration:(CGFloat)duration{
    [[TKAlertCenter defaultCenter] postAlertWithMessage:message duration:duration];
}

@end

