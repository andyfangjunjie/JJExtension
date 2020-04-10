//
//  NSDate+JJExtension.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "NSDate+JJExtension.h"

@implementation NSDate (JJExtension)

/**
 时间戳转换字符串
 
 @param timestamp 时间戳
 @param format 格式化
 @return 转换字符串
 */
+ (NSString *)jj_convertTimeStringWithTimestamp:(NSTimeInterval)timestamp
                                         format:(JJDateFormat)format {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:28800];
    switch (format) {
        case JJDateFormatSecond:
            df.dateFormat = @"yyyy.MM.dd hh:mm:ss";
            break;
        case JJDateFormatMinute:
            df.dateFormat = @"yyyy.MM.dd hh:mm";
            break;
        case JJDateFormatDay:
            df.dateFormat = @"yyyy.MM.dd";
            break;
        default:
            break;
    }
    return  [df stringFromDate:date];
}


/**
 时间戳转换字符串
 
 @param timestamp 时间戳
 @param format 格式化
 @return 转换字符串
 */
+ (NSString *)jj_convertTimeStringWithTimestamp:(NSTimeInterval)timestamp
                                   stringFormat:(NSString *)format {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:28800];
    df.dateFormat = format;
    return  [df stringFromDate:date];
}

/**
 字符串转换时间戳
 
 @param timeString 字符串
 @param format 格式化
 @return 时间戳
 */
+ (NSTimeInterval)jj_convertTimestampWithTimeString:(NSString *)timeString
                                             format:(JJDateFormat)format {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:28800];
    switch (format) {
        case JJDateFormatSecond:
            df.dateFormat = @"yyyy.MM.dd hh:mm:ss";
            break;
        case JJDateFormatMinute:
            df.dateFormat = @"yyyy.MM.dd hh:mm";
            break;
        case JJDateFormatDay:
            df.dateFormat = @"yyyy.MM.dd";
            break;
        default:
            break;
    }
    return [[df dateFromString:timeString] timeIntervalSince1970];
}

/**
 字符串转换时间戳
 
 @param timeString 字符串
 @param format 格式化
 @return 时间戳
 */
+ (NSTimeInterval)jj_convertTimestampWithTimeString:(NSString *)timeString
                                       stringFormat:(NSString *)format {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:28800];
    df.dateFormat = format;
    return [[df dateFromString:timeString] timeIntervalSince1970];
}



@end
