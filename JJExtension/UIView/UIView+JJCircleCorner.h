//
//  UIView+JJCircleCorner.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JJCircleCorner)
/**
 设置圆角
 
 @param radius 角度
 @param bgColor 背景色
 @param borderWidth 轮廓宽度
 @param borderColor 轮廓颜色
 */
- (void)jj_addCorner:(CGFloat)radius
     backgroundColor:(UIColor *)bgColor
         borderWidth:(CGFloat)borderWidth
         borderColor:(UIColor *)borderColor;
@end
