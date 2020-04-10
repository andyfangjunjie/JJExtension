//
//  JJBlockButton.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "JJBlockButton.h"

typedef void(^clickButton)(JJBlockButton *);

@interface JJBlockButton ()

/** 按钮点击事件 */
@property (nonatomic,strong) clickButton click;

@end

@implementation JJBlockButton


/**
 *  创建按钮UIButton-block点击事件
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
 *  @param tag tag值
 *  @param cornerRadius 圆弧度
 *  @param click 按钮点击事件
 */
+ (instancetype)jj_buttonWithFrame:(CGRect)frame
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
                               tag:(NSInteger)tag
                      cornerRadius:(CGFloat)cornerRadius
                       buttonClick:(void(^)(JJBlockButton *button))click {
    return [[self alloc] initWithFrame:frame buttonType:buttonType backgroundColor:bgColor title:title titleColor:titleColor selectedTitle:selectedTitle selectedTitleColor:selectedTitleColor image:image selectedImage:selectedImage highlightedImage:highlightedImage font:font tag:tag cornerRadius:cornerRadius buttonClick:click];
}
/**
 *  创建按钮UIButton-block点击事件
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
 *  @param tag tag值
 *  @param cornerRadius 圆弧度
 *  @param click 按钮点击事件
 */
- (instancetype)initWithFrame:(CGRect)frame
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
                          tag:(NSInteger)tag
                 cornerRadius:(CGFloat)cornerRadius
                  buttonClick:(void(^)(JJBlockButton *button))click {
    if(self = [super initWithFrame:frame]) {
        self = [JJBlockButton buttonWithType:buttonType];
        self.frame = frame;
        self.backgroundColor = bgColor;
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        [self setTitle:selectedTitle forState:UIControlStateSelected];
        [self setTitleColor:selectedTitleColor forState:UIControlStateSelected];
        [self setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
        self.titleLabel.font = font;
        [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        self.tag = tag;
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = cornerRadius;
        self.click = click;
    }
    return self;
}
- (void)buttonClick:(JJBlockButton *)sender {
    !self.click ? : self.click(sender);
}
@end
