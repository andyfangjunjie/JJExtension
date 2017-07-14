//
//  UIStoryboard+JJExtension.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UIStoryboard+JJExtension.h"

@implementation UIStoryboard (JJExtension)
/**
 从storyboard中加载控制器
 
 @param name storyboard名字
 */
+ (id)jj_instantiateInitialViewControllerWithName:(NSString *)name {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:nil];
    return [storyboard instantiateInitialViewController];
}

/**
 从storyboard中加载控制器
 
 @param name storyboard名字
 @param identifier 标志
 */
+ (id)jj_instantiateInitialViewControllerWithName:(NSString *)name
                                       identifier:(NSString *)identifier {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:identifier];
}
@end
