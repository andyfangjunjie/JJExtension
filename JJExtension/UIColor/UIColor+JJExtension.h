//
//  UIColor+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
UIKIT_EXTERN UIColor *JJRGB(NSInteger r,NSInteger g,NSInteger b);

@interface UIColor (JJExtension)
/** 颜色转换 */
+ (UIColor *)jj_colorWithHexString:(NSString *)hexString;
@end
