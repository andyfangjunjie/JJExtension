//
//  UITableView+JJExtension.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UITableView+JJExtension.h"

@implementation UITableView (JJExtension)
/**
 注册nibCell
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerNibForCellWithClass:(Class)aClass {
    NSString *name = NSStringFromClass(aClass);
    [self registerNib:[UINib nibWithNibName:name bundle:nil] forCellReuseIdentifier:name];
    return name;
}
/**
 注册classCell
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerClassForCellWithClass:(Class)aClass {
    NSString *name = NSStringFromClass(aClass);
    [self registerClass:aClass forCellReuseIdentifier:name];
    return name;
}
/**
 注册nibView
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerNibForHeaderFooterViewWithClass:(Class)aClass {
    NSString *name = NSStringFromClass(aClass);
    [self registerNib:[UINib nibWithNibName:name bundle:nil] forHeaderFooterViewReuseIdentifier:name];
    return name;
}
/**
 注册classView
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerClassForHeaderFooterViewWithClass:(Class)aClass {
    NSString *name = NSStringFromClass(aClass);
    [self registerClass:aClass forHeaderFooterViewReuseIdentifier:name];
    return name;
}

@end
