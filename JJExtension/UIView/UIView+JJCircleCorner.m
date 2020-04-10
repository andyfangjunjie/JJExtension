//
//  UIView+JJCircleCorner.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UIView+JJCircleCorner.h"

@implementation UIView (JJCircleCorner)
- (UIImage *)drawRectWithCorner:(CGFloat)radius
                backgroundColor:(UIColor *)bgColor
                    borderWidth:(CGFloat)borderWidth
                    borderColor:(UIColor *)borderColor {
    
    UIGraphicsBeginImageContextWithOptions(self.frame.size, false, UIScreen.mainScreen.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, bgColor.CGColor);
    CGContextSetLineWidth(context, borderWidth);
    CGContextSetStrokeColorWithColor(context, borderColor.CGColor);
    
    CGRect bounds = CGRectMake(borderWidth / 2.f, borderWidth / 2.f, self.bounds.size.width - borderWidth, self.bounds.size.height - borderWidth);
    
    CGContextMoveToPoint(context, CGRectGetMinX(bounds), radius);
    CGContextAddArcToPoint(context, CGRectGetMinX(bounds), CGRectGetMinY(bounds), radius, CGRectGetMinY(bounds), radius);
    CGContextAddArcToPoint(context, CGRectGetMaxX(bounds), CGRectGetMinY(bounds), CGRectGetMaxX(bounds), CGRectGetMinY(bounds) + radius, radius);
    CGContextAddArcToPoint(context, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds), CGRectGetMaxX(bounds) - radius, CGRectGetMaxY(bounds), radius);
    CGContextAddArcToPoint(context, CGRectGetMinX(bounds), CGRectGetMaxY(bounds), CGRectGetMinX(bounds), CGRectGetMaxY(bounds) - radius, radius);
    
    CGContextClosePath(context);
    CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathFillStroke);
    UIImage *output = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return output;
}
- (void)jj_addCorner:(CGFloat)radius
     backgroundColor:(UIColor *)bgColor
         borderWidth:(CGFloat)borderWidth
         borderColor:(UIColor *)borderColor {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    imageView.image = [self drawRectWithCorner:radius backgroundColor:bgColor borderWidth:borderWidth / 2.f borderColor:borderColor];
    [self insertSubview:imageView atIndex:0];
}
@end
