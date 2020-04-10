//
//  NSUserDefaults+JJExtension.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "NSUserDefaults+JJExtension.h"

@implementation NSUserDefaults (JJExtension)
#pragma mark - 存储对象
/** 存储字符串 */
+ (void)jj_setObject:(id)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}
/** 存储bool值 */
+ (void)jj_setBool:(BOOL)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}
/** 存储整型值 */
+ (void)jj_setInteger:(NSInteger)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setInteger:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}
/** 存储URL */
+ (void)jj_setURL:(NSURL *)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setURL:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}
/** 存储浮点型 */
+ (void)jj_setFloat:(float)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setFloat:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
/** 存储浮点型 */
+ (void)jj_setDouble:(double)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setDouble:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

#pragma mark - 获取对象
/** 获取字符串 */
+ (NSString *)jj_getStringValueForKey:(NSString *)key {
    return [[NSUserDefaults standardUserDefaults] stringForKey:key];
}
/** 获取bool */
+ (BOOL)jj_getBoolValueForKey:(NSString *)key {
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}
/** 获取整型值 */
+ (NSInteger)jj_getIntegerValueForKey:(NSString *)key {
    return [[NSUserDefaults standardUserDefaults] integerForKey:key];
}
/** 获取URL */
+ (NSURL *)jj_getURLValueForKey:(NSString *)key {
    return [[NSUserDefaults standardUserDefaults] URLForKey:key];
}
/** 获取浮点型 */
+ (float)jj_getFloatValueForKey:(NSString *)key {
    return [[NSUserDefaults standardUserDefaults] floatForKey:key];
}
/** 获取浮点型 */
+ (double)jj_getDoubleValueForKey:(NSString *)key {
    return [[NSUserDefaults standardUserDefaults] doubleForKey:key];
}
#pragma mark - 删除对象
/** 删除对象 */
+ (void)jj_removeObjectForKey:(NSString *)key {
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
/** 删除所有对象 */
+ (void)jj_removeAllObjects {
    NSString *appDomain = [[NSBundle mainBundle] bundleIdentifier];
    [[NSUserDefaults standardUserDefaults] removePersistentDomainForName:appDomain];
    
    //    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //    NSDictionary *dict = [userDefaults dictionaryRepresentation];
    //    for(NSString *key in dict.allKeys)
    //    {
    //        [userDefaults removeObjectForKey:key];
    //        [userDefaults synchronize];
    //    }
}
@end
