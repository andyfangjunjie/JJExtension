//
//  UIView+JJControls.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JJControls)
/**
 *  创建UIButton
 *
 *  @param frame 控件坐标
 *  @param buttonType 按钮类型
 *  @param bgColor 背景颜色
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
 *  @param cornerRadius 圆弧度
 */
+ (UIButton *)jj_buttonWithFrame:(CGRect)frame
                      buttonType:(UIButtonType)buttonType
                 backgroundColor:(UIColor *)bgColor
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
                             tag:(NSInteger)tag
                    cornerRadius:(CGFloat)cornerRadius;
#pragma mark - 创建UILabel
/**
 *  创建UILabel
 *
 *  @param frame 控件坐标
 *  @param bgColor 背景颜色
 *  @param text 字体
 *  @param textColor 字体颜色
 *  @param textAlignment 字体格式
 *  @param font 字体大小
 *  @param tag tag值
 *  @param cornerRadius 圆弧度
 */
+ (UILabel *)jj_labelWithFrame:(CGRect)frame
               backgroundColor:(UIColor *)bgColor
                          text:(NSString *)text
                     textColor:(UIColor *)textColor
                 textAlignment:(NSTextAlignment)textAlignment
                          font:(UIFont *)font
                           tag:(NSInteger)tag
                  cornerRadius:(CGFloat)cornerRadius;
#pragma mark - 创建UIImageView
/**
 *  创建UIImageView
 *
 *  @param frame 控件坐标
 *  @param bgColor 背景颜色
 *  @param image 图片
 *  @param target 执行方法对象
 *  @param action 执行方法
 *  @param tag tag值
 *  @param cornerRadius 圆弧度
 */
+ (UIImageView *)jj_imageViewWithFrame:(CGRect)frame
                       backgroundColor:(UIColor *)bgColor
                                 image:(NSString *)image
                                target:(id)target
                                action:(SEL)action
                                   tag:(NSInteger)tag
                          cornerRadius:(CGFloat)cornerRadius;
#pragma mark - 创建UITextField
/**
 *  创建UITextField
 *
 *  @param frame 控件坐标
 *  @param bgColor 背景色
 *  @param text 字体
 *  @param textColor 字体颜色
 *  @param font 字体大小
 *  @param placeholder 默认提示字体
 *  @param returnKeyType 返回按键类型
 *  @param keyboardType 键盘类型
 *  @param borderStyle 输入框类型
 *  @param delegate 代理
 *  @param tag tag值
 *  @param cornerRadius 圆弧度
 */
+ (UITextField *)jj_textFieldWithFrame:(CGRect)frame
                       backgroundColor:(UIColor *)bgColor
                                  text:(NSString *)text
                             textColor:(UIColor *)textColor
                                  font:(UIFont *)font
                           placeholder:(NSString *)placeholder
                         returnKeyType:(UIReturnKeyType)returnKeyType
                          keyBoardType:(UIKeyboardType)keyboardType
                       textBorderStyle:(UITextBorderStyle)borderStyle
                              delegate:(id)delegate
                                   tag:(NSInteger)tag
                          cornerRadius:(CGFloat)cornerRadius;
#pragma mark - 创建UITextView
/**
 *  创建UITextView
 *
 *  @param frame 控件坐标
 *  @param bgColor 背景色
 *  @param text 字体
 *  @param textColor 字体颜色
 *  @param font 字体大小
 *  @param returnKeyType 返回按键类型
 *  @param delegate 代理
 *  @param tag tag值
 *  @param cornerRadius 圆弧度
 */
+ (UITextView *)jj_textViewWithFrame:(CGRect)frame
                     backgroundColor:(UIColor *)bgColor
                                text:(NSString *)text
                           textColor:(UIColor *)textColor
                                font:(UIFont *)font
                       returnKeyType:(UIReturnKeyType)returnKeyType
                            delegate:(id)delegate
                                 tag:(NSInteger)tag
                        cornerRadius:(CGFloat)cornerRadius;
#pragma mark - 创建UIView
/**
 *  创建UIView
 *
 *  @param frame 控件坐标
 *  @param bgColor 背景色
 *  @param cornerRadius 圆弧度
 */
+ (UIView *)jj_viewWithFrame:(CGRect)frame
             backgroundColor:(UIColor *)bgColor
                cornerRadius:(CGFloat)cornerRadius;
#pragma mark - 创建UIScrollView
/**
 *  创建UIScrollView
 *
 *  @param frame 控件坐标
 *  @param bgColor 背景色
 *  @param contentSize 内容大小
 *  @param pagingEnabled 翻页
 *  @param delegate 代理
 *  @param tag tag值
 */
+ (UIScrollView *)jj_scrollViewWithFrame:(CGRect)frame
                         backgroundColor:(UIColor *)bgColor
                             contentSize:(CGSize)contentSize
                           pagingEnabled:(BOOL)pagingEnabled
                                delegate:(id)delegate
                                     tag:(NSInteger)tag;
#pragma mark - 创建UIWebView
/**
 *  创建UIWebView
 *
 *  @param frame 控件坐标
 *  @param urlString 请求地址
 *  @param htmlString 字符串
 */
+ (UIWebView *)jj_webViewWithFrame:(CGRect)frame
                         URLString:(NSString *)urlString
                        HTMLString:(NSString *)htmlString;
#pragma mark - 创建UISwitch
/**
 *  创建UISwitch
 *
 *  @param frame 控件坐标
 *  @param on 选中状态
 *  @param onTintColor 选中颜色
 *  @param target 执行方法对象
 *  @param action 执行方法
 *  @param tag tag值
 */
+ (UISwitch *)jj_switchWithFrame:(CGRect)frame
                              on:(BOOL)on
                     onTintColor:(UIColor *)onTintColor
                          target:(id)target
                          action:(SEL)action
                             tag:(NSInteger)tag;
#pragma mark - 创建UISlider
/**
 *  创建UISlider
 *
 *  @param frame 控件坐标
 *  @param value 当前值
 *  @param minimumValue 最小值
 *  @param maximumValue 最大值
 *  @param minimumTrackTintColor 左边颜色
 *  @param maximumTrackTintColor 右变颜色
 *  @param thumbTintColor 点颜色
 *  @param target 执行方法对象
 *  @param action 执行方法
 *  @param tag tag值
 */
+ (UISlider *)jj_sliderWithFrame:(CGRect)frame
                           value:(CGFloat)value
                    minimumValue:(CGFloat)minimumValue
                    maximumValue:(CGFloat)maximumValue
           minimumTrackTintColor:(UIColor *)minimumTrackTintColor
           maximumTrackTintColor:(UIColor *)maximumTrackTintColor
                  thumbTintColor:(UIColor *)thumbTintColor
                          target:(id)target
                          action:(SEL)action
                             tag:(NSInteger)tag;
#pragma mark - 创建UIPageControl
/**
 *  创建UIPageControl
 *
 *  @param frame 控件坐标
 *  @param numberOfPages 总页码
 *  @param currentPage 当前页码
 *  @param hidesForSinglePage 只有一页时隐藏
 *  @param pageIndicatorTintColor 未选中颜色
 *  @param currentPageIndicatorTintColor 当前颜色
 *  @param target 执行方法对象
 *  @param action 执行方法
 *  @param tag tag值
 */
+ (UIPageControl *)jj_pageControlWithFrame:(CGRect)frame
                             numberOfPages:(NSInteger)numberOfPages
                               currentPage:(NSInteger)currentPage
                        hidesForSinglePage:(BOOL)hidesForSinglePage
                    pageIndicatorTintColor:(UIColor *)pageIndicatorTintColor
             currentPageIndicatorTintColor:(UIColor *)currentPageIndicatorTintColor
                                    target:(id)target
                                    action:(SEL)action
                                       tag:(NSInteger)tag;
#pragma mark - 创建UIProgressView
/**
 *  创建UIProgressView
 *
 *  @param frame 控件坐标
 *  @param progress 当前值
 *  @param progressTintColor 左边颜色
 *  @param trackTintColor 右变颜色
 *  @param tag tag值
 */
+ (UIProgressView *)jj_progressViewWithFrame:(CGRect)frame
                                    progress:(CGFloat)progress
                           progressTintColor:(UIColor *)progressTintColor
                              trackTintColor:(UIColor *)trackTintColor
                                         tag:(NSInteger)tag;
@end
