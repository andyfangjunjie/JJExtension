//
//  NSString+JJExtension.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "NSString+JJExtension.h"
#import "NSObject+JJExtension.h"

@implementation NSString (JJExtension)
/** 判断nil和NULL、<NULL> */
- (BOOL)jj_isEmptyString {
    if (self == nil||self == NULL) {
        return YES;
    }
    if ([self isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}
/** 判断空，返回字符串 */
- (NSString *)jj_returnNoEmptyString {
    if([self jj_isEmptyString])
        return @"";
    else
        return self;
}

/** 验证手机号码格式 */
- (BOOL)jj_isMobile {
    NSString * MOBILE = @"^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    if ([regextestmobile evaluateWithObject:self] == YES) {
        return YES;
    } else {
        return NO;
    }
}

/** 判断邮箱格式 */
- (BOOL)jj_isEmail {
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

/** 判断全部为数字 */
- (BOOL)jj_isAllFigures {
    NSString *regex =@"[0-9]*";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if (![pred evaluateWithObject:self]) {
        return YES;
    }
    return NO;
}
/** 检测输入内容是否有表情 包含返回YES 否则返回NO*/
- (BOOL)jj_isContainsEmoji {
    __block BOOL returnValue = NO;
    
    [self enumerateSubstringsInRange:NSMakeRange(0, [self length]) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        
        const unichar hs = [substring characterAtIndex:0];
        if (0xd800 <= hs && hs <= 0xdbff) {
            if (substring.length > 1) {
                const unichar ls = [substring characterAtIndex:1];
                const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                if (0x1d000 <= uc && uc <= 0x1f77f) {
                    returnValue = YES;
                }
            }
        } else if (substring.length > 1) {
            const unichar ls = [substring characterAtIndex:1];
            if (ls == 0x20e3) {
                returnValue = YES;
            }
        } else {
            if (0x2100 <= hs && hs <= 0x27ff) {
                returnValue = YES;
            } else if (0x2B05 <= hs && hs <= 0x2b07) {
                returnValue = YES;
            } else if (0x2934 <= hs && hs <= 0x2935) {
                returnValue = YES;
            } else if (0x3297 <= hs && hs <= 0x3299) {
                returnValue = YES;
            } else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50) {
                returnValue = YES;
            }
        }
    }];
    
    return returnValue;
}

/** 根据字符串内容的多少  在固定宽度 下计算出实际的行高 */
- (CGFloat)jj_calculatorHeightWithWidth:(CGFloat)textWidth
                               fontSize:(CGFloat)size {
    if ([self jj_getCurrentVersion] >= 7.0) {
        //iOS7之后
        /*
         第一个参数: 预设空间 宽度固定  高度预设 一个最大值
         第二个参数: 行间距 如果超出范围是否截断
         第三个参数: 属性字典 可以设置字体大小
         */
        NSDictionary *dict = @{NSFontAttributeName:[UIFont systemFontOfSize:size]};
        CGRect rect = [self boundingRectWithSize:CGSizeMake(textWidth, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
        //返回计算出的行高
        return rect.size.height;
        
    } else {
        //iOS7之前
        /*
         1.第一个参数  设置的字体固定大小
         2.预设 宽度和高度 宽度是固定的 高度一般写成最大值
         3.换行模式 字符换行
         */
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wdeprecated-declarations"
        CGSize textSize = [self sizeWithFont:[UIFont systemFontOfSize:size] constrainedToSize:CGSizeMake(textWidth, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
#pragma clang diagnostic pop
        
        return textSize.height;//返回 计算出得行高
    }
}

/** 根据字符串内容的多少  在固定高度 下计算出实际的行宽 */
- (CGFloat)jj_calculatorWidthWithHeight:(CGFloat)textHeight
                               fontSize:(CGFloat)size {
    if ([self jj_getCurrentVersion] >= 7.0) {
        //iOS7之后
        /*
         第一个参数: 预设空间 高度固定  宽度预设 一个最大值
         第二个参数: 行间距 如果超出范围是否截断
         第三个参数: 属性字典 可以设置字体大小
         */
        NSDictionary *dict = @{NSFontAttributeName:[UIFont systemFontOfSize:size]};
        CGRect rect = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, textHeight) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
        //返回计算出的行高
        return rect.size.width;
        
    } else {
        //iOS7之前
        /*
         1.第一个参数  设置的字体固定大小
         2.预设 预设空间 高度固定  宽度预设 一个最大值
         3.换行模式 字符换行
         */
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wdeprecated-declarations"
        CGSize textSize = [self sizeWithFont:[UIFont systemFontOfSize:size] constrainedToSize:CGSizeMake(MAXFLOAT, textHeight) lineBreakMode:NSLineBreakByCharWrapping];
#pragma clang diagnostic pop
        return textSize.width;//返回 计算出得行高
    }
}
@end
