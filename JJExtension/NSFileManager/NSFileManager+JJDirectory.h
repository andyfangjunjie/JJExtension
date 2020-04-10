//
//  NSFileManager+JJDirectory.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (JJDirectory)
/** 获取程序工程目录路径 */
+ (NSString *)jj_directoryAtApp;
/** 得到Caches目录路径 */
+ (NSString *)jj_directoryAtCaches;
/** 得到Document目录路径 */
+ (NSString *)jj_directoryAtDocument;
/** 得到Tmp目录路径 */
+ (NSString *)jj_directoryAtTmp;
@end
