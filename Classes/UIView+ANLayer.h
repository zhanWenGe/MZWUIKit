//
//  UIView+ANLayer.h
//  NewACE
//
//  Created by Eric on 2016/12/22.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ANLayer)

@property (nonatomic, assign)IBInspectable CGSize shadowOffset;
@property (nonatomic, assign)IBInspectable UIColor *shadowColor;
@property (nonatomic, assign)IBInspectable float shadowOpactity;
@property (nonatomic, assign)IBInspectable CGFloat shadowRadius;
@property (nonatomic, assign)IBInspectable BOOL maskToBounds;


@property (nonatomic, assign)IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign)IBInspectable CGFloat borderWidth;
@property (nonatomic, strong)IBInspectable UIColor *borderColor;

@property (nonatomic, assign)IBInspectable CGFloat topBorderWidth;
@property (nonatomic, assign)IBInspectable CGFloat leftBorderWidth;
@property (nonatomic, assign)IBInspectable CGFloat bottomBorderWidth;
@property (nonatomic, assign)IBInspectable CGFloat rightBorderWidth;


@end
