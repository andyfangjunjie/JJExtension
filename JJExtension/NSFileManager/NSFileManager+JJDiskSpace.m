//
//  NSFileManager+JJDiskSpace.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "NSFileManager+JJDiskSpace.h"

@implementation NSFileManager (JJDiskSpace)
#pragma mark 总的磁盘空间
/** 总的磁盘空间 */
- (float)jj_getTotalDiskSpace {
    
    float totalSpace;
    
    NSError *error = nil;
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSDictionary *dictionary = [self attributesOfFileSystemForPath:[paths lastObject] error: &error];
    if (dictionary) {
        NSNumber *fileSystemSizeInBytes = [dictionary objectForKey: NSFileSystemSize];
        
        totalSpace = [fileSystemSizeInBytes floatValue]/1024.0f/1024.0f/1024.0f;
    } else {
        totalSpace = 0;
        
    }
    return totalSpace;
}
#pragma mark 可用磁盘空间
/** 可用磁盘空间 */
- (float)jj_getFreeDiskSpace {
    
    float freeSpace;
    NSError *error = nil;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSDictionary *dictionary = [self attributesOfFileSystemForPath:[paths lastObject] error: &error];
    if (dictionary) {
        NSNumber *freeFileSystemSizeInBytes = [dictionary objectForKey:NSFileSystemFreeSize];
        freeSpace = [freeFileSystemSizeInBytes floatValue]/1024.0f/1024.0f/1024.0f;
    } else {
        freeSpace = 0;
    }
    
    return freeSpace;
}
@end
