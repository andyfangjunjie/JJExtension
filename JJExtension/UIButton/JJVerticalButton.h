//
//  JJVerticalButton.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JJVerticalButton : UIButton
/**
 *  创建YYVerticalButton
 *
 *  @param frame 控件坐标
 *  @param title 标题
 *  @param titleColor 标题颜色
 *  @param selectedTitle 选中标题
 *  @param selectedTitleColor 选中标题颜色
 *  @param image 图片
 *  @param selectedImage 选中图片
 *  @param highlightedImage 高亮图片
 *  @param font 字体大小
 *  @param target 执行方法对象
 *  @param action 执行方法
 *  @param tag tag值
 */
+ (JJVerticalButton *)jj_buttonWithFrame:(CGRect)frame
                                   title:(NSString *)title
                              titleColor:(UIColor *)titleColor
                           selectedTitle:(NSString *)selectedTitle
                      selectedTitleColor:(UIColor *)selectedTitleColor
                                   image:(NSString *)image
                           selectedImage:(NSString *)selectedImage
                        highlightedImage:(NSString *)highlightedImage
                                    font:(UIFont *)font
                                  target:(id)target
                                  action:(SEL)action
                                     tag:(NSInteger)tag;
@end
