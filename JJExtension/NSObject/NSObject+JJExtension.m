//
//  NSObject+JJExtension.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "NSObject+JJExtension.h"
#import <UIKit/UIKit.h>

@implementation NSObject (JJExtension)
/** 获取iOS版本号 */
- (double)jj_getCurrentVersion {
    return [[[UIDevice currentDevice] systemVersion] doubleValue];
}
/** 根据日期判断星座 */
- (NSString *)jj_getAstroWithMonth:(NSInteger)month
                               day:(NSInteger)day {
    NSString *astroString = @"魔羯水瓶双鱼白羊金牛双子巨蟹狮子处女天秤天蝎射手魔羯";
    NSString *astroFormat = @"102123444543";
    NSString *result;
    if (month<1 || month>12 || day<1 || day>31) {
        return @"错误日期格式!";
    }
    if(month==2 && day>29) {
        return @"错误日期格式!!";
    } else if(month==4 || month==6 || month==9 || month==11) {
        if (day>30) {
            return @"错误日期格式!!!";
        }
    }
    result=[NSString stringWithFormat:@"%@",[astroString substringWithRange:NSMakeRange(month*2-(day < [[astroFormat substringWithRange:NSMakeRange((month-1), 1)] intValue] - (-19))*2,2)]];
    NSLog(@"%d",day < [[astroFormat substringWithRange:NSMakeRange((month-1), 1)] intValue]);
    return result;
}

/** 时间戳转换字符串 */
- (NSString *)jj_convertTimeStringWithTimestamp:(double)timestamp
                                         format:(NSString *)format {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:format];
    return [df stringFromDate:date];
}
@end
