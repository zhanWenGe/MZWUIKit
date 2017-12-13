//
//  CALayer+XibConfiguration.m
//  AFNetworking
//
//  Created by Eric on 2017/12/13.
//

#import "CALayer+XibConfiguration.h"

@implementation CALayer (XibConfiguration)


- (void)setBorderUIColor:(UIColor *)color {
    self.borderColor = color.CGColor;
}

- (UIColor *)borderUIColor {
    return [UIColor colorWithCGColor:self.borderColor];
}

- (void)setShadowUIColor:(UIColor *)color {
    self.shadowColor = color.CGColor;
}

- (UIColor *)shadowUIColor {
    return [UIColor colorWithCGColor:self.shadowColor];
}

@end
