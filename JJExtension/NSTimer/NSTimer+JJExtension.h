//
//  NSTimer+JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (JJExtension)
/** 暂停 */
- (void)jj_pauseTimer;
/** 重启 */
- (void)jj_resumeTimer;
/** 经过interval时间重启 */
- (void)jj_resumeTimerAfterTimeInterval:(NSTimeInterval)interval;

@end
