//
//  UITextField+JJExtension.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UITextField+JJExtension.h"

typedef NS_ENUM(NSInteger, JJPosition) {
    JJPositionLeft,
    JJPositionRight
};

@implementation UITextField (JJExtension)



/**
 添加左侧视图
 
 @param image 图片名称
 */
- (UIImageView *)jj_leftViewWithImage:(NSString *)image {
    return [self addViewWithImage:image position:JJPositionLeft];
}

/**
 添加右侧视图
 
 @param image 图片名称
 */
- (UIImageView *)jj_rightViewWithImage:(NSString *)image {
    return [self addViewWithImage:image position:JJPositionRight];
}
- (UIImageView *)addViewWithImage:(NSString *)image
                         position:(JJPosition)position {
    // 密码输入框左边图片
    UIImageView *imageView = [[UIImageView alloc] init];
    // 设置尺寸
    CGRect imageBound = self.bounds;
    // 宽度高度一样
    imageBound.size.width = imageBound.size.height;
    imageView.bounds = imageBound;
    // 设置图片
    imageView.image = [UIImage imageNamed:image];
    // 设置图片居中显示
    imageView.contentMode = UIViewContentModeCenter;
    // 添加TextFiled的左边视图
    if (position == JJPositionLeft) {
        self.leftView = imageView;
        // 设置TextField左边的总是显示
        self.leftViewMode = UITextFieldViewModeAlways;
    } else {
        self.rightView = imageView;
        // 设置TextField左边的总是显示
        self.rightViewMode = UITextFieldViewModeAlways;
    }
    
    return imageView;
}
@end
