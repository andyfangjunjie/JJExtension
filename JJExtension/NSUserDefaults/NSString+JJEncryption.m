//
//  NSString+JJEncryption.m
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#import "NSString+JJEncryption.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (JJEncryption)
/** MD5加密,返回加密字符串 */
- (NSString *)jj_Md5 {
    const char * cStr = [self UTF8String];
    unsigned char dihest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (unsigned int)strlen(cStr), dihest);
    
    NSMutableString * outPut = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH*2];
    for (int i=0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [outPut appendFormat:@"%02X",dihest[i]];
    }
    return [outPut lowercaseString];
}
@end
