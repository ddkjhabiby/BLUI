//
//  UIView+Common.m
//  MXTTTXM
//
//  Created by Michael on 5/28/15.
//  Copyright (c) 2015 MXTTTXM UPUPUP. All rights reserved.
//

#import "UIView+Common.h"

@implementation UIView (Common)

@dynamic x, y, width, height, origin, size;

#pragma mark - Setter

- (void)setX:(CGFloat)x {
    CGRect r        = self.frame;
    r.origin.x      = x;
    self.frame      = r;
}

- (void)setY:(CGFloat)y {
    CGRect r        = self.frame;
    r.origin.y      = y;
    self.frame      = r;
}

- (void)setWidth:(CGFloat)width {
    CGRect r        = self.frame;
    r.size.width    = width;
    self.frame      = r;
}

- (void)setHeight:(CGFloat)height {
    CGRect r        = self.frame;
    r.size.height   = height;
    self.frame      = r;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect rect = self.frame;
    rect.origin = origin;
    self.frame = rect;
}

- (void)setSize:(CGSize)size {
    CGRect rect = self.frame;
    rect.size = size;
    self.frame = rect;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
    self.layer.masksToBounds = (borderWidth > 0);
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (void)setCornerRadius:(CGFloat)radius {
    self.clipsToBounds = (radius > 0);
    self.layer.cornerRadius = radius;
}

#pragma mark - Getter

- (CGFloat)x {
    return self.frame.origin.x;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (CGSize)size {
    return self.frame.size;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (CGFloat)centerY {
    return self.center.y;
}

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

#pragma mark - Method

- (void)setHalfCornerRadius {
    [self setCornerRadius:self.height/2];
}

- (void)setCornerRadius:(CGFloat)radius byRoundingCorners:(UIRectCorner)corners viewSize:(CGSize)size {
    UIBezierPath *rounded = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, size.width, size.height) byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    [shapeLayer setPath:rounded.CGPath];

    self.layer.mask = shapeLayer;
}

- (void)setBorderWidth:(CGFloat)borderWidth color:(UIColor *)color {
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = color.CGColor;
    self.layer.masksToBounds = (borderWidth > 0);
}

@end
