//
//  UIViewController+JJMethodSwizzling.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UIViewController+JJMethodSwizzling.h"
#import <objc/runtime.h>

@implementation UIViewController (JJMethodSwizzling)

+ (void)load {
    //交换两个方法的执行顺序
    Method method1 = class_getInstanceMethod(self, NSSelectorFromString(@"dealloc"));
    Method method2 = class_getInstanceMethod(self, @selector(jj_dealloc));
    method_exchangeImplementations(method1, method2);
}


- (void)jj_dealloc {
    //拦截
    //    NSLog(@"%@ -- my_dealloc",self);
    //调回去执行系统的dealloc
    [self jj_dealloc];
}

@end
