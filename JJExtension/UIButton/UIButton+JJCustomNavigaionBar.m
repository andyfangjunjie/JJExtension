//
//  UIButton+JJCustomNavigaionBar.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UIButton+JJCustomNavigaionBar.h"

@implementation UIButton (JJCustomNavigaionBar)
/**
 标题按钮
 
 @param title 文字
 @param target 对象
 @param action 方法
 @return UIBarButtonItem
 */
+ (instancetype)jj_customNavigationBarWithTitle:(NSString *)title
                                         target:(id)target
                                         action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:title forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}
/**
 标题按钮
 
 @param title 文字
 @param selectedTitle 选中文字
 @param target 对象
 @param action 方法
 @return UIBarButtonItem
 */
+ (instancetype)jj_customNavigationBarWithTitle:(NSString *)title
                                  selectedTitle:(NSString *)selectedTitle
                                         target:(id)target
                                         action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitle:selectedTitle forState:UIControlStateSelected];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}


/**
 图片按钮
 
 @param image 图片
 
 @param target 对象
 @param action 方法
 @return UIBarButtonItem
 */
+ (instancetype)jj_customNavigationBarWithImage:(UIImage *)image
                                         target:(id)target
                                         action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}
@end
