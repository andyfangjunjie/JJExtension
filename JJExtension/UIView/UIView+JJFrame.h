//
//  UIView+JJFrame.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#pragma mark - 适配
/** iPhone4或iPhone4s屏幕 640x960像素点 */
#define JJ_iPhone4ORiPhone4S ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
/** iPhone5或iPhone5c或iPhone5s屏幕 640x1136像素点 */
#define JJ_iPhone5ORiPhone5cORiPhone5s ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
/** iPhone6屏幕 750x1334像素点 */
#define JJ_iPhone6ORiPhone6sORiPhone7 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
/** iPhone6Plus屏幕 1242x2208像素点 */
#define JJ_iPhone6PlusORiPhone6sPlusORiPhone7Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)
/** iphone6plus放大版屏幕 */
#define JJ_iPhone6PlusBigORiPhone6sPlusBigORiPhone7PlusBIG ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen] currentMode].size) : NO)


#pragma mark - 屏幕尺寸
#define JJ_WIDTH [UIScreen mainScreen].bounds.size.width
#define JJ_HEIGHT [UIScreen mainScreen].bounds.size.height

//系统控件的默认高度
UIKIT_EXTERN CGFloat const JJStatusBarHeight;
UIKIT_EXTERN CGFloat const JJTopBarHeight;
UIKIT_EXTERN CGFloat const JJBottomBarHeight;
UIKIT_EXTERN CGFloat const YYCellDefaultHeight;

// 当控件为全屏时的横纵左边
UIKIT_EXTERN CGFloat const JJFrameX;
UIKIT_EXTERN CGFloat const JJFrameY;

//中英状态下键盘的高度
UIKIT_EXTERN CGFloat const JJEnglishKeyboardHeight;
UIKIT_EXTERN CGFloat const JJChineseKeyboardHeight;


UIKIT_EXTERN CGFloat JJAdaptationFrame(CGFloat original);

@interface UIView (JJFrame)
/** 在分类中声明@property，只会生成方法的声明，不会生成方法的实现和带有_下划线的成员变量 */

/** 控件X */
@property (nonatomic,assign) CGFloat jj_x;
/** 控件Y */
@property (nonatomic,assign) CGFloat jj_y;
/** 控件右边 */
@property (nonatomic,assign) CGFloat jj_maxX;
/** 控件下边 */
@property (nonatomic,assign) CGFloat jj_maxY;
/** 控件宽度 */
@property (nonatomic,assign) CGFloat jj_width;
/** 控件高度 */
@property (nonatomic,assign) CGFloat jj_height;
/** 控件中心X */
@property (nonatomic, assign) CGFloat jj_centerX;
/** 控件中心Y */
@property (nonatomic, assign) CGFloat jj_centerY;
/** 控件原点 */
@property (nonatomic, assign) CGPoint jj_origin;
/** 控件大小 */
@property (nonatomic, assign) CGSize jj_size;

@end

























