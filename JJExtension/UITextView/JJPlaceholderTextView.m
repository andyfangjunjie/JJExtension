//
//  JJPlaceholderTextView.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "JJPlaceholderTextView.h"
#import "UIView+JJFrame.h"

@interface JJPlaceholderTextView ()
/** 占位文字Label */
@property (nonatomic,weak) UILabel *placeholderLabel;

@end


@implementation JJPlaceholderTextView

#pragma mark - lazy
- (UILabel *)placeholderLabel
{
    if(_placeholderLabel == nil)
    {
        //占位label
        UILabel *placeholderLabel = [[UILabel alloc] init];
        placeholderLabel.numberOfLines = 0;
        placeholderLabel.jj_x = 5;
        placeholderLabel.jj_y = 8;
        [self addSubview:placeholderLabel];
        self.placeholderLabel = placeholderLabel;
    }
    return _placeholderLabel;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}
- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setup];
}
/** 初始化 */
- (void)setup
{
    //默认文字字体
    self.font = [UIFont systemFontOfSize:15];
    //默认占位文字字体颜色
    self.placeholderColor = [UIColor grayColor];
    //竖直方向有弹簧效果
    self.alwaysBounceVertical = YES;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewTextDidChange) name:UITextViewTextDidChangeNotification object:nil];
}
- (void)textViewTextDidChange
{
    self.placeholderLabel.hidden = self.hasText;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if(!self.placeholder.length) return;
    
    self.placeholderLabel.jj_width = (self.jj_width - 2 * self.placeholderLabel.jj_x);
    //有了宽或者高 会自动计算高或者宽
    [self.placeholderLabel sizeToFit];
}
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - setter
- (void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    self.placeholderLabel.text = placeholder;
    [self setNeedsLayout];
}
- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    _placeholderColor = placeholderColor;
    self.placeholderLabel.textColor = placeholderColor;
}
- (void)setFont:(UIFont *)font
{
    [super setFont:font];
    self.placeholderLabel.font = font;
    [self setNeedsLayout];
}
- (void)setText:(NSString *)text
{
    [super setText:text];
    [self textViewTextDidChange];
}
- (void)setAttributedText:(NSAttributedString *)attributedText
{
    [super setAttributedText:attributedText];
    [self textViewTextDidChange];
}
- (void)setTextAlignment:(NSTextAlignment)textAlignment
{
    [super setTextAlignment:textAlignment];
    self.placeholderLabel.textAlignment = textAlignment;
}

@end
