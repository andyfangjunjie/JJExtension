//
//  NSString+JJDirectory.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "NSString+JJDirectory.h"
#import "NSFileManager+JJDirectory.h"

@implementation NSString (JJDirectory)
/** 拼接Caches目录路径 */
- (NSString *)jj_stringByAppendingAtCaches {
    return [[NSFileManager jj_directoryAtCaches] stringByAppendingPathComponent:self];
}
/** 拼接Document目录路径 */
- (NSString *)jj_stringByAppendingAtDocument {
    return [[NSFileManager jj_directoryAtDocument] stringByAppendingPathComponent:self];
}
/** 拼接Tmp目录路径 */
- (NSString *)jj_stringByAppendingAtTmp {
    return [[NSFileManager jj_directoryAtTmp] stringByAppendingPathComponent:self];
}

@end
