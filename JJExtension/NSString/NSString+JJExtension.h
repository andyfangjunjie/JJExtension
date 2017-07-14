//
//  NSString+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (JJExtension)
/** 判断nil和NULL、<NULL> */
- (BOOL)jj_isEmptyString;

/** 判断空，返回字符串 */
- (NSString *)jj_returnNoEmptyString;

/** 验证手机号码格式 */
- (BOOL)jj_isMobile;

/** 判断邮箱格式 */
- (BOOL)jj_isEmail;

/** 判断全部为数字 */
- (BOOL)jj_isAllFigures;

/** 检测输入内容是否有表情 包含返回YES 否则返回NO*/
- (BOOL)jj_isContainsEmoji;

/** 根据字符串内容的多少  在固定宽度 下计算出实际的行高 */
- (CGFloat)jj_calculatorHeightWithWidth:(CGFloat)textWidth
                               fontSize:(CGFloat)size;

/** 根据字符串内容的多少  在固定高度 下计算出实际的行宽 */
- (CGFloat)jj_calculatorWidthWithHeight:(CGFloat)textHeight
                               fontSize:(CGFloat)size;
@end
