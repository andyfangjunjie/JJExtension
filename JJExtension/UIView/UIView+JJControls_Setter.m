//
//  UIView+JJControls_Setter.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UIView+JJControls_Setter.h"

@implementation UIView (JJControls_Setter)
/**
 *  Setter-UIButton
 *
 *  @param button _button
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
+ (UIButton *)jj_setterButtonWithButton:(UIButton *)button
                                  frame:(CGRect)frame
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
                        andCornerRadius:(CGFloat)cornerRadius {
    if(!button) {
        button = [UIButton buttonWithType:buttonType];
        button.frame = frame;
        button.backgroundColor = bgColor;
        [button setTitle:title forState:UIControlStateNormal];
        [button setTitleColor:titleColor forState:UIControlStateNormal];
        [button setTitle:selectedTitle forState:UIControlStateSelected];
        [button setTitleColor:selectedTitleColor forState:UIControlStateSelected];
        [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
        [button setImage:[UIImage imageNamed:highlightedImage] forState:UIControlStateHighlighted];
        button.titleLabel.font = font;
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        button.tag = tag;
        button.layer.masksToBounds = cornerRadius;
        button.layer.cornerRadius = cornerRadius;
    }
    return button;
}
/**
 *  Setter-UILabel
 *
 *  @param label _label
 *  @param frame 控件坐标
 *  @param bgColor 背景颜色
 *  @param text 字体
 *  @param textColor 字体颜色
 *  @param textAlignment 字体格式
 *  @param font 字体大小
 *  @param tag tag值
 *  @param cornerRadius 圆弧度
 */
+ (UILabel *)jj_setterLabelWithLabel:(UILabel *)label
                               frame:(CGRect)frame
                     backgroundColor:(UIColor *)bgColor
                                text:(NSString *)text
                           textColor:(UIColor *)textColor
                       textAlignment:(NSTextAlignment)textAlignment
                                font:(UIFont *)font
                                 tag:(NSInteger)tag
                        cornerRadius:(CGFloat)cornerRadius {
    if(!label) {
        label = [[UILabel alloc] initWithFrame:frame];
        label.backgroundColor = bgColor;
        label.text = text;
        label.textColor = textColor;
        label.textAlignment = textAlignment;
        label.tag = tag;
        label.font = font;
        label.numberOfLines = 0;
        label.layer.masksToBounds = cornerRadius;
        label.layer.cornerRadius = cornerRadius;
        if([[UIDevice currentDevice].systemVersion doubleValue] >= 10.0) {
            label.adjustsFontForContentSizeCategory = YES;
        }
    }
    return label;
}
/**
 *  Setter-UIImageView
 *
 *  @param imageView _imageView
 *  @param frame 控件坐标
 *  @param bgColor 背景颜色
 *  @param image 图片
 *  @param target 执行方法对象
 *  @param action 执行方法
 *  @param tag tag值
 *  @param cornerRadius 圆弧度
 */
+ (UIImageView *)jj_setterImageViewWithImageView:(UIImageView *)imageView
                                           frame:(CGRect)frame
                                 backgroundColor:(UIColor *)bgColor
                                           image:(NSString *)image
                                          target:(id)target
                                          action:(SEL)action
                                             tag:(NSInteger)tag
                                    cornerRadius:(CGFloat)cornerRadius {
    if(!imageView) {
        imageView = [[UIImageView alloc] initWithFrame:frame];
        imageView.backgroundColor = bgColor;
        if(image.length)
            imageView.image = [UIImage imageNamed:image];
        imageView.tag = tag;
        imageView.userInteractionEnabled = YES;
        if(target != nil) {
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
            [imageView addGestureRecognizer:tap];
        }
        imageView.layer.masksToBounds = cornerRadius;
        imageView.layer.cornerRadius = cornerRadius;
    }
    return imageView;
}
/**
 *  Setter-UITextField
 *
 *  @param textField _textField
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
+ (UITextField *)jj_setterTextFieldWithTextField:(UITextField *)textField
                                           frame:(CGRect)frame
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
                                    cornerRadius:(CGFloat)cornerRadius {
    if(!textField) {
        textField = [[UITextField alloc] initWithFrame:frame];
        textField.backgroundColor = bgColor;
        textField.delegate = delegate;
        textField.font = font;
        textField.text = text;
        textField.textColor = textColor;
        textField.tag = tag;
        textField.keyboardType = keyboardType;
        textField.returnKeyType = returnKeyType;
        textField.placeholder = placeholder;
        textField.layer.masksToBounds = cornerRadius;
        textField.borderStyle = borderStyle;
        textField.layer.cornerRadius = cornerRadius;
        //    [textField setValue:[UIColor colorWithRed:80/255.0f green:80/255.0f blue:80/255.0f alpha:1.00f] forKeyPath:@"_placeholderLabel.textColor"];
    }
    return textField;
}
/**
 *  Setter-UITextView
 *
 *  @param textView _textView
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
+ (UITextView *)jj_setterTextViewWithTextView:(UITextView *)textView
                                        frame:(CGRect)frame
                              backgroundColor:(UIColor *)bgColor
                                         text:(NSString *)text
                                    textColor:(UIColor *)textColor
                                         font:(UIFont *)font
                                returnKeyType:(UIReturnKeyType)returnKeyType
                                     delegate:(id)delegate
                                          tag:(NSInteger)tag
                                 cornerRadius:(CGFloat)cornerRadius {
    if(!textView) {
        textView = [[UITextView alloc] initWithFrame:frame];
        textView.backgroundColor = bgColor;
        textView.text = text;
        textView.textColor = textColor;
        textView.font = font;
        textView.returnKeyType = returnKeyType;
        textView.delegate = delegate;
        textView.tag = tag;
        textView.layer.masksToBounds = cornerRadius;
        textView.layer.cornerRadius = cornerRadius;
    }
    return textView;
}
/**
 *  Setter-UIView
 *
 *  @param view _view
 *  @param frame 控件坐标
 *  @param bgColor 背景色
 *  @param cornerRadius 圆弧度
 */
+ (UIView *)jj_setterViewWithView:(UIView *)view
                            frame:(CGRect)frame
                  backgroundColor:(UIColor *)bgColor
                     cornerRadius:(CGFloat)cornerRadius {
    if(!view) {
        view = [[UIView alloc] initWithFrame:frame];
        view.backgroundColor = bgColor;
        view.layer.masksToBounds = cornerRadius;
        view.layer.cornerRadius = cornerRadius;
    }
    return view;
}
/**
 *  Setter-UIScrollView
 *
 *  @param scrollView _scrollView
 *  @param frame 控件坐标
 *  @param bgColor 背景色
 *  @param contentSize 内容大小
 *  @param pagingEnabled 翻页
 *  @param delegate 代理
 *  @param tag tag值
 */
+ (UIScrollView *)jj_setterScrollViewWithScrollView:(UIScrollView *)scrollView
                                              frame:(CGRect)frame
                                    backgroundColor:(UIColor *)bgColor
                                        contentSize:(CGSize)contentSize
                                      pagingEnabled:(BOOL)pagingEnabled
                                           delegate:(id)delegate
                                                tag:(NSInteger)tag {
    if(!scrollView) {
        scrollView = [[UIScrollView alloc] initWithFrame:frame];
        scrollView.backgroundColor = bgColor;
        scrollView.contentSize = contentSize;
        scrollView.pagingEnabled = pagingEnabled;
        scrollView.delegate = delegate;
        scrollView.tag = tag;
    }
    return scrollView;
}
/**
 *  Setter-UIWebView
 *
 *  @param webView _webView
 *  @param frame 控件坐标
 *  @param urlString 请求地址
 *  @param htmlString 字符串
 */
+ (UIWebView *)jj_setterWebViewWithVebView:(UIWebView *)webView
                                     frame:(CGRect)frame
                                 URLString:(NSString *)urlString
                                HTMLString:(NSString *)htmlString {
    if(!webView) {
        webView = [[UIWebView alloc] initWithFrame:frame];
        webView.backgroundColor = [UIColor whiteColor];
        webView.scalesPageToFit = YES;
        if(urlString.length) {
            NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
            [webView loadRequest:request];
        } else if(htmlString.length) {
            [webView loadHTMLString:htmlString baseURL:nil];
        }
    }
    return webView;
}
/**
 *  Setter-UISwitch
 *
 *  @param switchs _switchs
 *  @param frame 控件坐标
 *  @param on 选中状态
 *  @param onTintColor 选中颜色
 *  @param target 执行方法对象
 *  @param action 执行方法
 *  @param tag tag值
 */
+ (UISwitch *)jj_setterSwitchWithSwitch:(UISwitch *)switchs
                                  frame:(CGRect)frame
                                     on:(BOOL)on
                            onTintColor:(UIColor *)onTintColor
                                 target:(id)target
                                 action:(SEL)action
                                    tag:(NSInteger)tag {
    if(!switchs) {
        switchs = [[UISwitch alloc] initWithFrame:frame];
        switchs.onTintColor = onTintColor;
        switchs.on = on;
        switchs.tag = tag;
        [switchs addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return switchs;
}
/**
 *  Setter-UISlider
 *
 *  @param slider _slider
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
+ (UISlider *)jj_setterSliderWithSlider:(UISlider *)slider
                                  frame:(CGRect)frame
                                  value:(CGFloat)value
                           minimumValue:(CGFloat)minimumValue
                           maximumValue:(CGFloat)maximumValue
                  minimumTrackTintColor:(UIColor *)minimumTrackTintColor
                  maximumTrackTintColor:(UIColor *)maximumTrackTintColor
                         thumbTintColor:(UIColor *)thumbTintColor
                                 target:(id)target
                                 action:(SEL)action
                                    tag:(NSInteger)tag {
    if(!slider) {
        slider = [[UISlider alloc] initWithFrame:frame];
        slider.value = value;
        slider.minimumValue = minimumValue;
        slider.maximumValue = maximumValue;
        slider.minimumTrackTintColor = minimumTrackTintColor;
        slider.maximumTrackTintColor = maximumTrackTintColor;
        slider.thumbTintColor = thumbTintColor;
        [slider addTarget:target action:action forControlEvents:UIControlEventValueChanged];
    }
    return slider;
}
/**
 *  Setter-UIPageControl
 *
 *  @param pageControl _pageControl
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
+ (UIPageControl *)jj_setterPageControlWithPageControl:(UIPageControl *)pageControl
                                                 frame:(CGRect)frame
                                         numberOfPages:(NSInteger)numberOfPages
                                           currentPage:(NSInteger)currentPage
                                    hidesForSinglePage:(BOOL)hidesForSinglePage
                                pageIndicatorTintColor:(UIColor *)pageIndicatorTintColor
                         currentPageIndicatorTintColor:(UIColor *)currentPageIndicatorTintColor
                                                target:(id)target
                                                action:(SEL)action
                                                   tag:(NSInteger)tag {
    if(!pageControl) {
        pageControl = [[UIPageControl alloc] initWithFrame:frame];
        pageControl.numberOfPages = numberOfPages;
        pageControl.currentPage = currentPage;
        pageControl.hidesForSinglePage = hidesForSinglePage;
        pageControl.pageIndicatorTintColor = pageIndicatorTintColor;
        pageControl.currentPageIndicatorTintColor = currentPageIndicatorTintColor;
        [pageControl addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return pageControl;
}
/**
 *  Setter-UIProgressView
 *
 *  @param progressView _progressView
 *  @param frame 控件坐标
 *  @param progress 当前值
 *  @param progressTintColor 左边颜色
 *  @param trackTintColor 右变颜色
 *  @param tag tag值
 */
+ (UIProgressView *)jj_setterProgressViewWithProgressView:(UIProgressView *)progressView
                                                    frame:(CGRect)frame
                                                 progress:(CGFloat)progress
                                        progressTintColor:(UIColor *)progressTintColor
                                           trackTintColor:(UIColor *)trackTintColor
                                                      tag:(NSInteger)tag {
    if(!progressView) {
        progressView = [[UIProgressView alloc] initWithFrame:frame];
        progressView.progress = progress;
        progressView.progressTintColor = progressTintColor;
        progressView.trackTintColor = trackTintColor;
        progressView.tag = tag;
    }
    return progressView;
}
@end
