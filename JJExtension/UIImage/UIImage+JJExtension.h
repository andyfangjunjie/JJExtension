//
//  UIImage+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
//PNG JPG 图片路径
#define JJPNGPATH(NAME)          [[NSBundle mainBundle] pathForResource:[NSString stringWithUTF8String:NAME] ofType:@"png"]
#define JJJPGPATH(NAME)          [[NSBundle mainBundle] pathForResource:[NSString stringWithUTF8String:NAME] ofType:@"jpg"]
#define JJPATH(NAME,EXT)         [[NSBundle mainBundle] pathForResource:(NAME) ofType:(EXT)]

//加载图片
#define JJPNGIMAGE(NAME)         [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:(NAME) ofType:@"png"]]
#define JJJPGIMAGE(NAME)         [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:(NAME) ofType:@"jpg"]]
#define JJIMAGE(NAME,EXT)        [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:(NAME) ofType:(EXT)]]
#define JJIMAGENAMED(NAME)       [UIImage imageNamed:NAME]

@interface UIImage (JJExtension)
/** 剪裁图片 */
- (UIImage *)jj_croppedImage;

/**
 设置圆角
 */
- (UIImage *)jj_circleImage;
/**
 设置圆角
 
 @param cornerRadius 角度
 @return UIImage
 */
- (UIImage *)jj_circleImageWithCornerRadius:(CGFloat)cornerRadius;
/**
 设置圆角
 
 @param cornerRadius 角度
 @param corners 方向
 @return UIImage
 */
- (UIImage *)jj_circleImageWithCornerRadius:(CGFloat)cornerRadius
                          byRoundingCorners:(UIRectCorner)corners;
@end
