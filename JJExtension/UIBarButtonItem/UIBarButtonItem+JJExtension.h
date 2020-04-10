//
//  UIBarButtonItem+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
/** 按钮偏移量 */
typedef NS_ENUM(NSInteger,JJBarButtonItemOffset) {
    JJBarButtonItemOffsetNone = 0,
    JJBarButtonItemOffsetLeft = 1,
    JJBarButtonItemOffsetRight = 2
};
@interface UIBarButtonItem (JJExtension)
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
                          action:(SEL)action;
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
                          action:(SEL)action;


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
                          action:(SEL)action;
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
                          action:(SEL)action;
@end
