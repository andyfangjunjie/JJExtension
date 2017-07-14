//
//  UIView+JJFrame.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UIView+JJFrame.h"
//系统控件的默认高度
CGFloat const JJStatusBarHeight = 20.0;
CGFloat const JJTopBarHeight = 44.0;
CGFloat const JJBottomBarHeight = 49.0;
CGFloat const JJCellDefaultHeight = 44.0;
// 当控件为全屏时的横纵左边
CGFloat const JJFrameX = 0.0;
CGFloat const JJFrameY = 0.0;

//中英状态下键盘的高度
CGFloat const JJEnglishKeyboardHeight = 216.0;
CGFloat const JJChineseKeyboardHeight = 252.0;

CGFloat JJAdaptationFrame(CGFloat original) {
    static CGFloat scale = 0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        CGFloat w = [UIScreen mainScreen].bounds.size.width;
        scale = w / 320;
    });
    return (scale * original);
}
@implementation UIView (JJFrame)
#pragma mark - x
- (void)setJj_x:(CGFloat)jj_x {
    CGRect frame = self.frame;
    frame.origin.x = jj_x;
    self.frame = frame;
}
- (CGFloat)jj_x {
    return self.frame.origin.x;
}
#pragma mark - y
- (void)setJj_y:(CGFloat)jj_y {
    CGRect frame = self.frame;
    frame.origin.y = jj_y;
    self.frame = frame;
}
- (CGFloat)jj_y {
    return self.frame.origin.y;
}
#pragma mark - 右边
- (void)setJj_maxX:(CGFloat)jj_maxX {
    CGRect frame = self.frame;
    frame.origin.x = jj_maxX - frame.size.width;
    self.frame = frame;
}
- (CGFloat)jj_maxX {
    return self.frame.origin.x + self.frame.size.width;
}
#pragma mark - 下边
- (void)setJj_maxY:(CGFloat)jj_maxY {
    CGRect frame = self.frame;
    frame.origin.y = jj_maxY - frame.size.height;
    self.frame = frame;
}
- (CGFloat)jj_maxY {
    return self.frame.origin.y + self.frame.size.height;
}
#pragma mark - 宽度
- (void)setJj_width:(CGFloat)jj_width {
    CGRect frame = self.frame;
    frame.size.width = jj_width;
    self.frame = frame;
}
- (CGFloat)jj_width {
    return self.frame.size.width;
}
#pragma mark - 高度
- (void)setJj_height:(CGFloat)jj_height {
    CGRect frame = self.frame;
    frame.size.height = jj_height;
    self.frame = frame;
}
- (CGFloat)jj_height {
    return self.frame.size.height;
}
#pragma mark - 控件中心X
- (void)setJj_centerX:(CGFloat)jj_centerX {
    CGPoint center = self.center;
    center.x = jj_centerX;
    self.center = center;
}
- (CGFloat)jj_centerX {
    return self.center.x;
}
#pragma mark - 控件中心Y
- (void)setJj_centerY:(CGFloat)jj_centerY {
    CGPoint center = self.center;
    center.y = jj_centerY;
    self.center = center;
}
- (CGFloat)jj_centerY {
    return self.center.y;
}
#pragma mark - 控件原点
- (void)setJj_origin:(CGPoint)jj_origin {
    CGRect frame = self.frame;
    frame.origin = jj_origin;
    self.frame = frame;
}

- (CGPoint)jj_origin {
    return self.frame.origin;
}
#pragma mark - 控件大小
- (void)setJj_size:(CGSize)jj_size {
    CGRect frame = self.frame;
    frame.size = jj_size;
    self.frame = frame;
}
- (CGSize)jj_size {
    return self.frame.size;
}

@end
































