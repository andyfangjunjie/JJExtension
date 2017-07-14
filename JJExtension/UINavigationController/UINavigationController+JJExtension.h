//
//  UINavigationController+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (JJExtension)
/**
 跳转返回指定的控制器
 
 @param aClass 控制器类型
 @param animated 是否需要动画
 @return 要跳转的控制器
 */
- (UIViewController *)jj_popToViewController:(Class)aClass
                                    animated:(BOOL)animated;
@end
