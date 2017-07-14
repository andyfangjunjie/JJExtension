//
//  NSFileManager+JJDiskSpace.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (JJDiskSpace)
/** 总的磁盘空间 */
- (float)jj_getTotalDiskSpace;
/** 可用磁盘空间 */
- (float)jj_getFreeDiskSpace;
@end
