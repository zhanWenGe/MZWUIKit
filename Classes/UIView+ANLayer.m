//
//  UIView+ANLayer.m
//  NewACE
//
//  Created by Eric on 2016/12/22.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import "UIView+ANLayer.h"
#import <objc/runtime.h>

@implementation UIView (ANLayer)



- (CGSize)shadowOffset {
    return [objc_getAssociatedObject(self, @selector(shadowOffset)) CGSizeValue];
}
- (void)setShadowOffset:(CGSize)shadowOffset {
    self.layer.shadowOffset = shadowOffset;
}

- (UIColor *)shadowColor {
    return objc_getAssociatedObject(self, @selector(shadowColor));
}
- (void)setShadowColor:(UIColor *)shadowColor {
    self.layer.shadowColor = shadowColor.CGColor;
}

- (float)shadowOpactity {
    return [objc_getAssociatedObject(self, @selector(shadowOpactity)) floatValue];
}
- (void)setShadowOpactity:(float)shadowOpactity {
    self.layer.shadowOpacity = shadowOpactity;
}

- (CGFloat)shadowRadius {
    return [objc_getAssociatedObject(self, @selector(shadowRadius)) floatValue];
}
- (void)setShadowRadius:(CGFloat)shadowRadius {
    self.layer.shadowRadius = shadowRadius;
}

- (BOOL)maskToBounds {
    return [objc_getAssociatedObject(self, @selector(maskToBounds)) boolValue];
}
- (void)setMaskToBounds:(BOOL)maskToBounds {
    self.layer.masksToBounds = maskToBounds;
}

- (CGFloat)cornerRadius
{
    return [objc_getAssociatedObject(self, @selector(cornerRadius)) floatValue];
}
- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (CGFloat)borderWidth
{
    return [objc_getAssociatedObject(self, @selector(borderWidth)) floatValue];
}
- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
    self.layer.masksToBounds = YES;
}

- (UIColor *)borderColor
{
    return objc_getAssociatedObject(self, @selector(borderColor));
}
- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;

}

- (CGFloat)topBorderWidth
{
    return [objc_getAssociatedObject(self, @selector(topBorderWidth)) floatValue];
}
- (void)setTopBorderWidth:(CGFloat)topBorderWidth
{

    CALayer *topLayer = [[CALayer alloc] init];
    topLayer.frame = CGRectMake(0, 0, self.frame.size.width, topBorderWidth);
    topLayer.backgroundColor = self.layer.borderColor;
    [self.layer addSublayer:topLayer];
    self.layer.masksToBounds = YES;

}

- (CGFloat)leftBorderWidth
{
    return [objc_getAssociatedObject(self, @selector(leftBorderWidth)) floatValue];
}
- (void)setLeftBorderWidth:(CGFloat)leftBorderWidth
{
    CALayer *leftLayer = [CALayer layer];
    leftLayer.frame = CGRectMake(0, 0, leftBorderWidth, self.frame.size.height);
    leftLayer.backgroundColor = self.layer.borderColor;
    [self.layer addSublayer:leftLayer];
    self.layer.masksToBounds = YES;
}

- (CGFloat)bottomBorderWidth
{
    return [objc_getAssociatedObject(self, @selector(bottomBorderWidth)) floatValue];
}
- (void)setBottomBorderWidth:(CGFloat)bottomBorderWidth
{
    CALayer *bottomLayer = [CALayer layer];
    bottomLayer.frame = CGRectMake(0, self.frame.size.height - bottomBorderWidth, self.frame.size.width, bottomBorderWidth);
    bottomLayer.backgroundColor = self.layer.borderColor;
    [self.layer addSublayer:bottomLayer];
    self.layer.masksToBounds = YES;
}

- (CGFloat)rightBorderWidth
{
    return [objc_getAssociatedObject(self, @selector(rightBorderWidth)) floatValue];
}
- (void)setRightBorderWidth:(CGFloat)rightBorderWidth
{
    CALayer *rightLayer = [CALayer layer];
    rightLayer.frame = CGRectMake(self.frame.size.width - rightBorderWidth, 0, rightBorderWidth, self.frame.size.height);
    rightLayer.backgroundColor = self.layer.borderColor;
    [self.layer addSublayer:rightLayer];
    self.layer.masksToBounds = YES;
    
}


@end
