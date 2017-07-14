//
//  UIFont+JJExtension.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "UIFont+JJExtension.h"
UIFont *JJFONTDEFAULT(void) {
    return [UIFont systemFontOfSize:14];
}
UIFont *JJFONT(NSInteger font) {
    return [UIFont systemFontOfSize:font];
}
UIFont *JJFONTBOLD(NSInteger font) {
    return [UIFont boldSystemFontOfSize:font];
}
@implementation UIFont (JJExtension)

@end
