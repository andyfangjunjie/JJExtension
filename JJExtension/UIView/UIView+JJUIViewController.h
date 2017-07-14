//
//  UIView+JJUIViewController.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JJUIViewController)
/**
 找到父类的控制器
 
 @return UIViewController
 */
- (UIViewController *)jj_viewForSuperViewController;
@end
