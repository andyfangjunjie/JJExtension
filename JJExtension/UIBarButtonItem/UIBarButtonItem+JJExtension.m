//
//  UIBarButtonItem+JJExtension.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UIBarButtonItem+JJExtension.h"
#import "UIFont+JJExtension.h"
#import "UIView+JJFrame.h"
#import "NSString+JJExtension.h"

NSInteger const BUTTON_TITLE_FONT = 15;//按钮字体大小
NSInteger const OFFSET = -5;//偏移量

@implementation UIBarButtonItem (JJExtension)

/**
 标题按钮
 
 @param title 文字
 @param offset 偏移方向
 @param target 对象
 @param action 方法
 @return UIBarButtonItem
 */
+ (instancetype)jj_itemWithTitle:(NSString *)title
                          offset:(JJBarButtonItemOffset)offset
                          target:(id)target
                          action:(SEL)action {
    UIButton *button = [self buttonWithButtonType:UIButtonTypeSystem offset:offset target:target action:action];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = JJFONT(BUTTON_TITLE_FONT);
    CGFloat height = 32;
    CGFloat width = [title jj_calculatorWidthWithHeight:height fontSize:BUTTON_TITLE_FONT];
    button.jj_size = CGSizeMake(width, height);
    return [[self alloc] initWithCustomView:button];
}
/**
 标题按钮
 
 @param title 文字
 @param selectedTitle 选中文字
 @param offset 偏移方向
 @param target 对象
 @param action 方法
 @return UIBarButtonItem
 */
+ (instancetype)jj_itemWithTitle:(NSString *)title
                   selectedTitle:(NSString *)selectedTitle
                          offset:(JJBarButtonItemOffset)offset
                          target:(id)target
                          action:(SEL)action {
    UIButton *button = [self buttonWithButtonType:UIButtonTypeCustom offset:offset target:target action:action];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitle:selectedTitle forState:UIControlStateSelected];
    button.titleLabel.font = JJFONT(BUTTON_TITLE_FONT);
    CGFloat height = 32;
    CGFloat width = [title jj_calculatorWidthWithHeight:height fontSize:BUTTON_TITLE_FONT];
    button.jj_size = CGSizeMake(width, height);
    return [[self alloc] initWithCustomView:button];
}
/**
 图片按钮
 
 @param image 图片
 
 @param offset 偏移方向
 @param target 对象
 @param action 方法
 @return UIBarButtonItem
 */
+ (instancetype)jj_itemWithImage:(UIImage *)image
                          offset:(JJBarButtonItemOffset)offset
                          target:(id)target
                          action:(SEL)action {
    UIButton *button = [self buttonWithButtonType:UIButtonTypeCustom offset:offset target:target action:action];
    [button setImage:image forState:UIControlStateNormal];
    button.jj_size = button.currentImage.size;
    
    return [[self alloc] initWithCustomView:button];
}

/**
 标题图片按钮
 
 @param title 文字
 @param image 图片
 @param offset 偏移方向
 @param target 对象
 @param action 方法
 @return UIBarButtonItem
 */
+ (instancetype)jj_itemWithTitle:(NSString *)title
                           image:(UIImage *)image
                          offset:(JJBarButtonItemOffset)offset
                          target:(id)target
                          action:(SEL)action {
    UIButton *button = [self buttonWithButtonType:UIButtonTypeCustom offset:offset target:target action:action];
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:image forState:UIControlStateNormal];
    button.titleLabel.font = JJFONT(BUTTON_TITLE_FONT);
    CGFloat height = 32;
    CGFloat width = [title jj_calculatorWidthWithHeight:height fontSize:BUTTON_TITLE_FONT];
    button.jj_size = CGSizeMake(width + button.currentImage.size.width, height);
    return [[self alloc] initWithCustomView:button];
}

+ (UIButton *)buttonWithButtonType:(UIButtonType)buttonType
                            offset:(JJBarButtonItemOffset)offset
                            target:(id)target
                            action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:buttonType];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    if(offset == JJBarButtonItemOffsetLeft) {
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        button.contentEdgeInsets = UIEdgeInsetsMake(0, OFFSET, 0, 0);
    } else if(offset == JJBarButtonItemOffsetRight) {
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        button.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, OFFSET);
    }
    return button;
}
@end
