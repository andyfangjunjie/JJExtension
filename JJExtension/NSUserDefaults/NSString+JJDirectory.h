//
//  NSString+JJDirectory.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JJDirectory)
/** 拼接Caches目录路径 */
- (NSString *)jj_stringByAppendingAtCaches;
/** 拼接Document目录路径 */
- (NSString *)jj_stringByAppendingAtDocument;
/** 拼接Tmp目录路径 */
- (NSString *)jj_stringByAppendingAtTmp;
@end
