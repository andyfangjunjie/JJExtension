//
//  UIImage+JJExtension.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UIImage+JJExtension.h"

@implementation UIImage (JJExtension)
/** 剪裁图片 */
- (UIImage *)jj_croppedImage {
    if (self) {
        //解决倒像问题
        UIGraphicsBeginImageContext(self.size);
        [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
        UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        //裁剪
        CGRect rectMAX = CGRectMake((newImage.size.width-newImage.size.height)/2, 0, newImage.size.height, newImage.size.height);
        CGImageRef subImageRef = CGImageCreateWithImageInRect(newImage.CGImage, rectMAX);
        UIGraphicsBeginImageContext(rectMAX.size);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextDrawImage(context, CGRectMake(0, 0, newImage.size.height, newImage.size.height), subImageRef);
        UIImage *viewImage = [UIImage imageWithCGImage:subImageRef];
        UIGraphicsEndImageContext();
        CGImageRelease(subImageRef);
        return viewImage;
    }
    return nil;
}
/**
 设置圆角
 */
- (UIImage *)jj_circleImage {
    return [self jj_circleImageWithCornerRadius:self.size.width/2 byRoundingCorners:UIRectCornerAllCorners];
}
/**
 设置圆角
 
 @param cornerRadius 角度
 @return UIImage
 */
- (UIImage *)jj_circleImageWithCornerRadius:(CGFloat)cornerRadius {
    return [self jj_circleImageWithCornerRadius:cornerRadius byRoundingCorners:UIRectCornerAllCorners];
}
/**
 设置圆角
 
 @param cornerRadius 角度
 @param corners 方向
 @return UIImage
 */
- (UIImage *)jj_circleImageWithCornerRadius:(CGFloat)cornerRadius
                          byRoundingCorners:(UIRectCorner)corners {
    //开启上下文 NO代表透明
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    //添加一个圈
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    //贝塞尔曲线 切图
    [[UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:CGSizeMake(cornerRadius*4, cornerRadius*4)] addClip];
    //将图片画上去
    [self drawInRect:rect];
    //获得新的图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    //结束上下文
    UIGraphicsEndImageContext();
    
    return newImage;
}
@end
