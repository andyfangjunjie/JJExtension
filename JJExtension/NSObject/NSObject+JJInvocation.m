//
//  NSObject+JJInvocation.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "NSObject+JJInvocation.h"

@implementation NSObject (JJInvocation)
- (id)jj_performSelector:(SEL)selector withObjects:(NSArray *)objects {
    //NSInvocation: 利用一个NSInvocation对象包装一次方法调用个（方法调用者、方法名、方法参数、方法返回值）
    //方法签名(类的签名)
    NSMethodSignature *methodSignature = [[self class] instanceMethodSignatureForSelector:selector];
    if(methodSignature == nil) {
        //抛出一个错误
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:[NSString stringWithFormat:@"-[%@ %@]- 方法找不到",NSStringFromClass([self class]),NSStringFromSelector(selector)] userInfo:nil];
        //或者用下边的方法
        //        [NSException raise:NSInvalidArgumentException format:@"-[%@ %@]- 方法找不到",NSStringFromClass([self class]),NSStringFromSelector(selector)];
    }
    
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSignature];
    invocation.target = self;
    invocation.selector = selector;
    //设置参数 methodSignature.numberOfArguments-2 除去self、cnd两个参数
    NSInteger paramsCount = methodSignature.numberOfArguments-2;
    paramsCount = MIN(paramsCount, objects.count);
    for(NSInteger i = 0;i < paramsCount;i++) {
        id object = objects[i];
        if([objects isKindOfClass:[NSNull class]]) continue;
        [invocation setArgument:&object atIndex:i+2];//index从2开始
    }
    [invocation invoke];
    //获取返回值
    id returnValue = nil;
    if(methodSignature.methodReturnLength) {//如果有返回值类型，采取获取返回值
        [invocation getReturnValue:&returnValue];
    }
    return returnValue;
}
@end
