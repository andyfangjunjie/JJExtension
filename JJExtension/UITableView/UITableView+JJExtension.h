//
//  UITableView+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (JJExtension)
/**
 注册nibCell
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerNibForCellWithClass:(Class)aClass;
/**
 注册classCell
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerClassForCellWithClass:(Class)aClass;
/**
 注册nibView
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerNibForHeaderFooterViewWithClass:(Class)aClass;
/**
 注册classView
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerClassForHeaderFooterViewWithClass:(Class)aClass;

@end
