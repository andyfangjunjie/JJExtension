//
//  JJPlaceholderTextView.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JJPlaceholderTextView : UITextView
/** 占位文字 */
@property (nonatomic,strong) NSString *placeholder;

/** 占位文字颜色 */
@property (nonatomic,strong) UIColor *placeholderColor;
@end
