//
//  NSDate+JJExtension.h
//  JJExtensionDemo
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 房俊杰. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 格式化字符串
 
 - JJDateFormatSecond: 秒
 - JJDateFormatMinute: 分
 - JJDateFormatDay: 天
 */
typedef NS_ENUM(NSInteger, JJDateFormat) {
    JJDateFormatSecond,
    JJDateFormatMinute,
    JJDateFormatDay
};
@interface NSDate (JJExtension)

/**
 时间戳转换字符串
 
 @param timestamp 时间戳
 @param format 格式化
 @return 转换字符串
 */
+ (NSString *)jj_convertTimeStringWithTimestamp:(NSTimeInterval)timestamp
                                      format:(JJDateFormat)format;


/**
 时间戳转换字符串
 
 @param timestamp 时间戳
 @param format 格式化
 @return 转换字符串
 */
+ (NSString *)jj_convertTimeStringWithTimestamp:(NSTimeInterval)timestamp
                                stringFormat:(NSString *)format;

/**
 字符串转换时间戳
 
 @param timeString 字符串
 @param format 格式化
 @return 时间戳
 */
+ (NSTimeInterval)jj_convertTimestampWithTimeString:(NSString *)timeString
                                          format:(JJDateFormat)format;

/**
 字符串转换时间戳
 
 @param timeString 字符串
 @param format 格式化
 @return 时间戳
 */
+ (NSTimeInterval)jj_convertTimestampWithTimeString:(NSString *)timeString
                                    stringFormat:(NSString *)format;



@end
