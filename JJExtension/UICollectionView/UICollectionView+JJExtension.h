//
//  UICollectionView+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (JJExtension)
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
 注册nibHeader
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerNibForSectionHeaderWithClass:(Class)aClass;
/**
 注册nibFooter
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerNibForSectionFooterWithClass:(Class)aClass;
/**
 注册classHeader
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerClassForSectionHeaderWithClass:(Class)aClass;
/**
 注册classFooter
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerClassForSectionFooterWithClass:(Class)aClass;

@end
