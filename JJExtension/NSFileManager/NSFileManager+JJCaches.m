//
//  NSFileManager+JJCaches.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "NSFileManager+JJCaches.h"

@implementation NSFileManager (JJCaches)
/**
 解析大小 返回GB、MB、KB、Bytes
 
 @param totalCount 大小
 @return 返回GB、MB、KB、Bytes
 */
+ (NSString *)jj_getSize:(unsigned long long)totalCount {
    static CGFloat const constant = 1024.0;
    if(totalCount >= constant){
        if(totalCount >= (constant * constant)){
            if(totalCount >= (constant * constant * constant)){
                return [NSString stringWithFormat:@"%.2fGB",totalCount/constant/constant/constant];
            }else{
                return [NSString stringWithFormat:@"%.2fMB",totalCount/constant/constant];
            }
        }else{
            return [NSString stringWithFormat:@"%.2fKB",totalCount/constant];
        }
    }else{
        return [NSString stringWithFormat:@"%zdBytes",totalCount];
    }
}

#pragma mark - 获取文件大小
/** 获取单个文件大小 返回字典：path:byte */
+ (NSDictionary *)jj_getSingleFileSizeAtPath:(NSString *)path {
    unsigned long long fileSizeBytes = 0;
    if([[self defaultManager] fileExistsAtPath:path]) {
        NSDictionary *attributes =  [[self defaultManager] attributesOfItemAtPath:path error:nil];
        //排除文件夹的存在
        if([attributes[NSFileType] isEqualToString:NSFileTypeDirectory]) {
            return nil;
        }
        fileSizeBytes = attributes.fileSize;
        return @{path:@(fileSizeBytes)};
    } else {
        return nil;
    }
}
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
                             failure:(void(^)(NSString *error))failure {
    if([[self defaultManager] fileExistsAtPath:folderPath]) {
        NSMutableArray *path_totalCountArray = [NSMutableArray array];
        
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            
            unsigned long long folderSize = 0;
            //获取子路径
            NSArray *subPathsArray = [[self defaultManager] subpathsAtPath:folderPath];
            //空文件夹
            if(!subPathsArray.count) {
                dispatch_sync(dispatch_get_main_queue(), ^{
                    !progress ? : progress(1.0);
                    !complete ? : complete(nil,0);
                });
                return;
            }
            for(NSInteger i = 0;i < subPathsArray.count;i++) {
                NSString *subPath = [folderPath stringByAppendingPathComponent:subPathsArray[i]];
                
                NSDictionary *path_countDictionary = [self jj_getSingleFileSizeAtPath:subPath];
                if(path_countDictionary == nil) continue;
                
                
                [path_totalCountArray addObject:path_countDictionary];
                
                folderSize += [path_countDictionary[subPath] unsignedLongLongValue];
                
                
                dispatch_sync(dispatch_get_main_queue(), ^{
                    !progress ? : progress(1.0*i/(subPathsArray.count-1));
                });
            }
            dispatch_sync(dispatch_get_main_queue(), ^{
                !progress ? : progress(1.0);
                !complete ? : complete(path_totalCountArray,folderSize);
                
            });
            
        });
    } else {
        !failure ? : failure(@"文件不存在");
    }
}
#pragma mark - 删除文件
/**
 删除单个文件
 
 @param path 文件路径
 */
+ (void)jj_removeObjectWithPath:(NSString *)path {
    if([[self defaultManager] fileExistsAtPath:path]) {
        [[self defaultManager] removeItemAtPath:path error:nil];
    }
}
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
                            failure:(void(^)(NSString *error))failure {
    //获取总文件大小
    [self jj_getFolderSizeAtFolderPath:path progress:^(CGFloat getProgress) {
        !progress ? : progress(0,0,getProgress*0.5);
    } complete:^(NSArray *path_totalCountArray, unsigned long long totalCount) {
        if(!path_totalCountArray.count)  {
            !progress ? : progress(0,0,1.0);
            !complete ? : complete(0);
            !failure ? : failure(@"没有文件需要删除");
            return;
        }
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            
            unsigned long long removedCount = 0;
            for(NSDictionary *path_countDic in path_totalCountArray) {
                //取出路径
                NSString *subPath = [path_countDic.allKeys firstObject];
                //取出大小
                unsigned long long subCount = [path_countDic[subPath] unsignedLongLongValue];
                //删除文件
                [self jj_removeObjectWithPath:subPath];
                
                removedCount += subCount;
                
                dispatch_sync(dispatch_get_main_queue(), ^{
                    //进度
                    !progress ? : progress(removedCount,totalCount,0.5+1.0*removedCount/totalCount*0.5);
                });
            }
            
            dispatch_sync(dispatch_get_main_queue(), ^{
                //完成
                !complete ? : complete(totalCount);
            });
            //删除空文件夹
            NSArray *subPathsArray = [[self defaultManager] subpathsAtPath:path];
            for(NSString *subPath in subPathsArray) {
                [self jj_removeObjectWithPath:[path stringByAppendingPathComponent:subPath]];
            }
        });
    } failure:^(NSString *error) {
        !failure ? : failure(error);
    }];
}
@end
