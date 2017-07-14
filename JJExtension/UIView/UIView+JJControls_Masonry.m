//
//  UIView+JJControls_Masonry.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UIView+JJControls_Masonry.h"

@implementation UIView (JJControls_Masonry)
/**
 *  创建按钮UIButton-Masonry
 *
 *  @param superView 父类
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
 *  @param block masonry约束回调
 */
+ (UIButton *)jj_masonryButtonWithSuperView:(id)superView
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
                               cornerRadius:(CGFloat)cornerRadius
                          masonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UIButton *button = [UIButton new];
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
    [superView addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return button;
}
/**
 *  创建UILabel-Masonry
 *
 *  @param superView 父类
 *  @param bgColor 背景颜色
 *  @param text 字体
 *  @param textColor 字体颜色
 *  @param textAlignment 字体格式
 *  @param font 字体大小
 *  @param tag tag值
 *  @param cornerRadius 圆弧度
 *  @param block masonry约束回调
 */
+ (UILabel *)jj_masonryLabelWithSuperView:(id)superView
                          backgroundColor:(UIColor *)bgColor
                                     text:(NSString *)text
                                textColor:(UIColor *)textColor
                            textAlignment:(NSTextAlignment)textAlignment
                                     font:(UIFont *)font
                                      tag:(NSInteger)tag
                             cornerRadius:(CGFloat)cornerRadius
                        masonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UILabel *label = [UILabel new];
    label.backgroundColor = bgColor;
    label.text = text;
    label.textColor = textColor;
    label.textAlignment = textAlignment;
    label.tag = tag;
    label.font = font;
    label.numberOfLines = 0;
    label.layer.masksToBounds = cornerRadius;
    label.layer.cornerRadius = cornerRadius;
    if([[UIDevice currentDevice].systemVersion doubleValue] >= 10.0){
        label.adjustsFontForContentSizeCategory = YES;
    }
    [superView addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return label;
}
/**
 *  创建UIImageView-Masonry
 *
 *  @param superView 父类
 *  @param bgColor 背景颜色
 *  @param image 图片
 *  @param target 执行方法对象
 *  @param action 执行方法
 *  @param tag tag值
 *  @param cornerRadius 圆弧度
 *  @param block masonry约束回调
 */
+ (UIImageView *)jj_masonryImageViewWithSuperView:(id)superView
                                  backgroundColor:(UIColor *)bgColor
                                            image:(NSString *)image
                                           target:(id)target
                                           action:(SEL)action
                                              tag:(NSInteger)tag
                                     cornerRadius:(CGFloat)cornerRadius
                                masonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UIImageView *imageView = [UIImageView new];
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
    [superView addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return imageView;
}
/**
 *  创建UITextField-Masonry
 *
 *  @param superView 父类
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
 *  @param block masonry约束回调
 */
+ (UITextField *)jj_masonryTextFieldWithSuperView:(id)superView
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
                                     cornerRadius:(CGFloat)cornerRadius
                                masonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UITextField *textField = [UITextField new];
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
    textField.layer.cornerRadius = cornerRadius;
    textField.borderStyle = borderStyle;
    //    [textField setValue:[UIColor colorWithRed:80/255.0f green:80/255.0f blue:80/255.0f alpha:1.00f] forKeyPath:@"_placeholderLabel.textColor"];
    [superView addSubview:textField];
    [textField mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return textField;
}
/**
 *  创建UITextView-Masonry
 *
 *  @param superView 父类
 *  @param bgColor 背景色
 *  @param text 字体
 *  @param textColor 字体颜色
 *  @param font 字体大小
 *  @param returnKeyType 返回按键类型
 *  @param delegate 代理
 *  @param tag tag值
 *  @param cornerRadius 圆弧度
 *  @param block masonry约束回调
 */
+ (UITextView *)jj_masonryTextViewWithSuperView:(id)superView
                                backgroundColor:(UIColor *)bgColor
                                           text:(NSString *)text
                                      textColor:(UIColor *)textColor
                                           font:(UIFont *)font
                                  returnKeyType:(UIReturnKeyType)returnKeyType
                                       delegate:(id)delegate
                                            tag:(NSInteger)tag
                                   cornerRadius:(CGFloat)cornerRadius
                              masonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UITextView *textView = [UITextView new];
    textView.backgroundColor = bgColor;
    textView.text = text;
    textView.textColor = textColor;
    textView.font = font;
    textView.returnKeyType = returnKeyType;
    textView.delegate = delegate;
    textView.tag = tag;
    textView.layer.masksToBounds = cornerRadius;
    textView.layer.cornerRadius = cornerRadius;
    [superView addSubview:textView];
    [textView mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return textView;
}
/**
 *  创建UIView-Masonry
 *
 *  @param superView 父类
 *  @param bgColor 背景色
 *  @param cornerRadius 圆弧度
 *  @param block masonry约束回调
 */
+ (UIView *)jj_masonryViewWithSuperView:(id)superView
                        backgroundColor:(UIColor *)bgColor
                           cornerRadius:(CGFloat)cornerRadius
                      masonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UIView *view = [UIView new];
    view.backgroundColor = bgColor;
    view.layer.masksToBounds = cornerRadius;
    view.layer.cornerRadius = cornerRadius;
    [superView addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return view;
}
/**
 *  创建UIScrollView-Masonry
 *
 *  @param superView 父类
 *  @param bgColor 背景色
 *  @param contentSize 内容大小
 *  @param pagingEnabled 翻页
 *  @param delegate 代理
 *  @param tag tag值
 *  @param block masonry约束回调
 */
+ (UIScrollView *)jj_masonryScrollViewWithSuperView:(id)superView
                                    backgroundColor:(UIColor *)bgColor
                                        contentSize:(CGSize)contentSize
                                      pagingEnabled:(BOOL)pagingEnabled
                                           delegate:(id)delegate
                                                tag:(NSInteger)tag
                                  masonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UIScrollView *scrollView = [UIScrollView new];
    scrollView.backgroundColor = bgColor;
    scrollView.contentSize = contentSize;
    scrollView.pagingEnabled = pagingEnabled;
    scrollView.delegate = delegate;
    scrollView.tag = tag;
    [superView addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return scrollView;
}

/**
 *  创建UIWebView-Masonry
 *
 *  @param superView 父类
 *  @param urlString 请求地址
 *  @param htmlString 字符串
 *  @param block masonry约束回调
 */
+ (UIWebView *)jj_masonryWebViewWithSuperView:(id)superView
                                    URLString:(NSString *)urlString
                                   HTMLString:(NSString *)htmlString
                            masonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UIWebView *webView = [UIWebView new];
    webView.backgroundColor = [UIColor whiteColor];
    webView.scalesPageToFit = YES;
    if(urlString.length) {
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
        [webView loadRequest:request];
    } else if(htmlString.length) {
        [webView loadHTMLString:htmlString baseURL:nil];
    }
    [superView addSubview:webView];
    [webView mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return webView;
}
/**
 *  创建UISwitch-Masonry
 *
 *  @param superView 父类
 *  @param on 选中状态
 *  @param onTintColor 选中颜色
 *  @param target 执行方法对象
 *  @param action 执行方法
 *  @param tag tag值
 *  @param block masonry约束回调
 */
+ (UISwitch *)jj_masonrySwitchWithSuperView:(id)superView
                                         on:(BOOL)on
                                onTintColor:(UIColor *)onTintColor
                                     target:(id)target
                                     action:(SEL)action
                                        tag:(NSInteger)tag
                          masonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UISwitch *switchs = [UISwitch new];
    switchs.onTintColor = onTintColor;
    switchs.on = on;
    switchs.tag = tag;
    [switchs addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [superView addSubview:switchs];
    [switchs mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return switchs;
}
/**
 *  创建UISlider-Masonry
 *
 *  @param superView 父类
 *  @param value 当前值
 *  @param minimumValue 最小值
 *  @param maximumValue 最大值
 *  @param minimumTrackTintColor 左边颜色
 *  @param maximumTrackTintColor 右变颜色
 *  @param thumbTintColor 点颜色
 *  @param target 执行方法对象
 *  @param action 执行方法
 *  @param tag tag值
 *  @param block masonry约束回调
 */
+ (UISlider *)jj_masonrySliderWithSuperView:(id)superView
                                      value:(CGFloat)value
                               minimumValue:(CGFloat)minimumValue
                               maximumValue:(CGFloat)maximumValue
                      minimumTrackTintColor:(UIColor *)minimumTrackTintColor
                      maximumTrackTintColor:(UIColor *)maximumTrackTintColor
                             thumbTintColor:(UIColor *)thumbTintColor
                                     target:(id)target
                                     action:(SEL)action
                                        tag:(NSInteger)tag
                          masonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UISlider *slider = [UISlider new];
    slider.value = value;
    slider.minimumValue = minimumValue;
    slider.maximumValue = maximumValue;
    slider.minimumTrackTintColor = minimumTrackTintColor;
    slider.maximumTrackTintColor = maximumTrackTintColor;
    slider.thumbTintColor = thumbTintColor;
    [slider addTarget:target action:action forControlEvents:UIControlEventValueChanged];
    [superView addSubview:slider];
    [slider mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return slider;
}
/**
 *  创建UIPageControl-Masonry
 *
 *  @param superView 父类
 *  @param numberOfPages 总页码
 *  @param currentPage 当前页码
 *  @param hidesForSinglePage 只有一页时隐藏
 *  @param pageIndicatorTintColor 未选中颜色
 *  @param currentPageIndicatorTintColor 当前颜色
 *  @param target 执行方法对象
 *  @param action 执行方法
 *  @param tag tag值
 *  @param block masonry约束回调
 */
+ (UIPageControl *)jj_masonryPageControlWithSuperView:(id)superView
                                        numberOfPages:(NSInteger)numberOfPages
                                          currentPage:(NSInteger)currentPage
                                   hidesForSinglePage:(BOOL)hidesForSinglePage
                               pageIndicatorTintColor:(UIColor *)pageIndicatorTintColor
                        currentPageIndicatorTintColor:(UIColor *)currentPageIndicatorTintColor
                                               target:(id)target
                                               action:(SEL)action
                                                  tag:(NSInteger)tag
                                 andMasonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UIPageControl *pageControl = [UIPageControl new];
    pageControl.numberOfPages = numberOfPages;
    pageControl.currentPage = currentPage;
    pageControl.hidesForSinglePage = hidesForSinglePage;
    pageControl.pageIndicatorTintColor = pageIndicatorTintColor;
    pageControl.currentPageIndicatorTintColor = currentPageIndicatorTintColor;
    [pageControl addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [superView addSubview:pageControl];
    [pageControl mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return pageControl;
}
/**
 *  创建UIProgressView-Masonry
 *
 *  @param superView 父类
 *  @param progress 当前值
 *  @param progressTintColor 左边颜色
 *  @param trackTintColor 右变颜色
 *  @param tag tag值
 *  @param block masonry约束回调
 */
+ (UIProgressView *)jj_masonryProgressViewWithSuperView:(id)superView
                                               progress:(CGFloat)progress
                                      progressTintColor:(UIColor *)progressTintColor
                                         trackTintColor:(UIColor *)trackTintColor
                                                    tag:(NSInteger)tag
                                      masonryConstraint:(void(^)(MASConstraintMaker *make))block {
    UIProgressView *progressView = [UIProgressView new];
    progressView.progress = progress;
    progressView.progressTintColor = progressTintColor;
    progressView.trackTintColor = trackTintColor;
    progressView.tag = tag;
    [superView addSubview:progressView];
    [progressView mas_makeConstraints:^(MASConstraintMaker *make) {
        !block ? : block(make);
    }];
    return progressView;
}
@end
