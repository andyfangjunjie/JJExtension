//
//  NSFileManager+JJCaches.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSFileManager (JJCaches)
/**
 解析大小 返回GB、MB、KB、Bytes
 
 @param totalCount 大小
 @return 返回GB、MB、KB、Bytes
 */
+ (NSString *)jj_getSize:(unsigned long long)totalCount;

/**
 获取一个目录下文件的总大小
 
 @param folderPath 文件夹路径
 @param progress 进度
 @param complete 完成path_totalCountArray：所有的路径+大小字典，totalCount：总大小
 @param failure 失败
 */
+ (void)jj_getFolderSizeAtFolderPath:(NSString *)folderPath
                            progress:(void(^)(CGFloat progress))progress
                            complete:(void(^)(NSArray *path_totalCountArray,unsigned long long totalCount))complete
                             failure:(void(^)(NSString *error))failure;


/**
 删除文件夹下文件
 
 @param path 文件夹路径
 @param progress 进度
 @param complete 完成
 @param failure 失败
 */
+ (void)jj_removeAllObjectsWithPath:(NSString *)path
                           progress:(void(^)(unsigned long long removedCount, unsigned long long totalCount, CGFloat progress))progress
                           complete:(void(^)(unsigned long long removedCount))complete
                            failure:(void(^)(NSString *error))failure;
@end
