//
//  UIStoryboard+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (JJExtension)
/**
 从storyboard中加载控制器
 
 @param name storyboard名字
 */
+ (id)jj_instantiateInitialViewControllerWithName:(NSString *)name;
/**
 从storyboard中加载控制器
 
 @param name storyboard名字
 @param identifier 标志
 */
+ (id)jj_instantiateInitialViewControllerWithName:(NSString *)name
                                       identifier:(NSString *)identifier;
@end
