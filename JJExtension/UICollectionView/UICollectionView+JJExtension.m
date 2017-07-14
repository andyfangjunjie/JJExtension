//
//  UICollectionView+JJExtension.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UICollectionView+JJExtension.h"

@implementation UICollectionView (JJExtension)
/**
 注册nibCell
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerNibForCellWithClass:(Class)aClass {
    NSString *name = NSStringFromClass(aClass);
    [self registerNib:[UINib nibWithNibName:name bundle:nil] forCellWithReuseIdentifier:name];
    return name;
}
/**
 注册classCell
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerClassForCellWithClass:(Class)aClass {
    NSString *name = NSStringFromClass(aClass);
    [self registerClass:aClass forCellWithReuseIdentifier:name];
    return name;
}

/**
 注册nibHeader
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerNibForSectionHeaderWithClass:(Class)aClass {
    NSString *name = NSStringFromClass(aClass);
    [self registerNib:[UINib nibWithNibName:name bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:name];
    return name;
}
/**
 注册nibFooter
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerNibForSectionFooterWithClass:(Class)aClass {
    NSString *name = NSStringFromClass(aClass);
    [self registerNib:[UINib nibWithNibName:name bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:name];
    return name;
}
/**
 注册classHeader
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerClassForSectionHeaderWithClass:(Class)aClass {
    NSString *name = NSStringFromClass(aClass);
    [self registerClass:aClass forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:name];
    return name;
}
/**
 注册classFooter
 
 @param aClass 类型
 @return 标志
 */
- (NSString *)jj_registerClassForSectionFooterWithClass:(Class)aClass {
    NSString *name = NSStringFromClass(aClass);
    [self registerClass:aClass forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:name];
    return name;
}
@end
