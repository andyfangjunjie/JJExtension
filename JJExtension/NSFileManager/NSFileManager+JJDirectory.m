//
//  NSFileManager+JJDirectory.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "NSFileManager+JJDirectory.h"

@implementation NSFileManager (JJDirectory)
/*
 获取到的目录没有最后面的 "/"
 */
/** 获取程序工程目录路径 */
+ (NSString *)jj_directoryAtApp {
    return [[NSBundle mainBundle] resourcePath];
}
/** 得到Caches目录路径 */
+ (NSString *)jj_directoryAtCaches {
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
}
/** 得到Document目录路径 */
+ (NSString *)jj_directoryAtDocument {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}

/** 得到Tmp目录路径 */
+ (NSString *)jj_directoryAtTmp {
    NSMutableString *path = [[NSMutableString alloc] initWithString:NSTemporaryDirectory()];
    [path deleteCharactersInRange:NSMakeRange(path.length-1, 1)];
    return path;
}

@end
