//
//  UITextField+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (JJExtension)
/**
 添加左侧视图
 
 @param image 图片名称
 */
-(UIImageView *)jj_leftViewWithImage:(NSString *)image;
/**
 添加右侧视图
 
 @param image 图片名称
 */
- (UIImageView *)jj_rightViewWithImage:(NSString *)image;
@end
