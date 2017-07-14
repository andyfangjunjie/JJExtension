//
//  JJVerticalButton.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "JJVerticalButton.h"
#import "UIView+JJFrame.h"

@implementation JJVerticalButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
}

- (void)setup {
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    //设置图片
    self.imageView.jj_x = 0;
    self.imageView.jj_y = 0;
    self.imageView.jj_width = self.jj_width;
    self.imageView.jj_height = self.imageView.jj_width;
    
    //设置文字
    self.titleLabel.jj_x = 0;
    self.titleLabel.jj_y = self.jj_width;
    self.titleLabel.jj_width = self.jj_width;
    self.titleLabel.jj_height = self.jj_height - self.imageView.jj_height;
    
}

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
                                     tag:(NSInteger)tag {
    JJVerticalButton *button = [JJVerticalButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
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
    return button;
}

@end
