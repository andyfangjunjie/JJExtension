//
//  NSObject+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (JJExtension)
/** 获取iOS版本号 */
- (double)jj_getCurrentVersion;

/** 根据日期判断星座 */
- (NSString *)jj_getAstroWithMonth:(NSInteger)month
                               day:(NSInteger)day;

/** 时间戳转换字符串 format:1992-01-01 10:10:10*/
- (NSString *)jj_convertTimeStringWithTimestamp:(double)timestamp
                                         format:(NSString *)format;
@end
