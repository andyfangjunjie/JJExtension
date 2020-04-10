//
//  UIView+JJXib.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UIView+JJXib.h"

@implementation UIView (JJXib)
/** 从xib中加载View */
+ (instancetype)jj_viewFromXib {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}
@end
