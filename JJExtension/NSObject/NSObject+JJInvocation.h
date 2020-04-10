//
//  NSObject+JJInvocation.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (JJInvocation)
/**
 调用多参数方法
 
 @param selector 方法名
 @param objects 参数数组
 @return NSObject
 */
- (id)jj_performSelector:(SEL)selector withObjects:(NSArray *)objects;

@end
