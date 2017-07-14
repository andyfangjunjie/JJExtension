//
//  NSUserDefaults+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (JJExtension)
#pragma mark - 存储对象
/** 存储字符串 */
+ (void)jj_setObject:(id)value forKey:(NSString *)defaultName;
/** 存储bool值 */
+ (void)jj_setBool:(BOOL)value forKey:(NSString *)defaultName;
/** 存储整型值 */
+ (void)jj_setInteger:(NSInteger)value forKey:(NSString *)defaultName;
/** 存储URL */
+ (void)jj_setURL:(NSURL *)value forKey:(NSString *)defaultName;
/** 存储浮点型 */
+ (void)jj_setFloat:(float)value forKey:(NSString *)defaultName;
/** 存储浮点型 */
+ (void)jj_setDouble:(double)value forKey:(NSString *)defaultName;

#pragma mark - 获取对象
/** 获取字符串 */
+ (NSString *)jj_getStringValueForKey:(NSString *)key;
/** 获取bool */
+ (BOOL)jj_getBoolValueForKey:(NSString *)key;
/** 获取整型值 */
+ (NSInteger)jj_getIntegerValueForKey:(NSString *)key;
/** 获取URL */
+ (NSURL *)jj_getURLValueForKey:(NSString *)key;
/** 获取浮点型 */
+ (float)jj_getFloatValueForKey:(NSString *)key;
/** 获取浮点型 */
+ (double)jj_getDoubleValueForKey:(NSString *)key;
#pragma mark - 删除对象
/** 删除对象 */
+ (void)jj_removeObjectForKey:(NSString *)key;
/** 删除所有对象 */
+ (void)jj_removeAllObjects;
@end
