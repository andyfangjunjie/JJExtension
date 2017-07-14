//
//  JJExtension.h
//  JJFramework
//
//  Created by 房俊杰 on 2017/7/13.
//  Copyright © 2017年 上海涵予信息科技有限公司. All rights reserved.
//

#ifndef JJExtension_h
#define JJExtension_h

#import "NSDate+JJExtension.h"

#import "NSTimer+JJExtension.h"

#import "UICollectionView+JJExtension.h"

#import "UITableView+JJExtension.h"

#import "UIStoryboard+JJExtension.h"

#import "NSFileManager+JJDirectory.h"
#import "NSFileManager+JJCaches.h"
#import "NSFileManager+JJDiskSpace.h"

#import "NSUserDefaults+JJExtension.h"

#import "NSObject+JJExtension.h"
#import "NSObject+JJInvocation.h"

#import "NSString+JJExtension.h"
//依赖库#import <CommonCrypto/CommonDigest.h>
#import "NSString+JJEncryption.h"
#import "NSString+JJDirectory.h"

#import "UIBarButtonItem+JJExtension.h"

#import "UIButton+JJCustomNavigaionBar.h"
#import "JJVerticalButton.h"
#import "JJBlockButton.h"

#import "UITextField+JJExtension.h"

#import "JJPlaceholderTextView.h"

#import "UIColor+JJExtension.h"

#import "UIFont+JJExtension.h"

#import "UIImage+JJExtension.h"

#import "UIView+JJXib.h"
#import "UIView+JJFrame.h"
#import "UIView+JJUIViewController.h"
#import "UIView+JJExtension.h"
#import "UIView+JJCircleCorner.h"
#import "UIView+JJControls.h"
//依赖库Masonry
#import "UIView+JJControls_Masonry.h"
#import "UIView+JJControls_Setter.h"


//依赖库#import <objc/runtime.h>
#import "UIViewController+JJMethodSwizzling.h"

#import "UINavigationController+JJExtension.h"


#pragma mark - log

#ifndef __OPTIMIZE__
/** 开发环境 */
#define JJLog(...) NSLog(@"%s - %d\n%@\n\n",__func__,__LINE__,[NSString stringWithFormat:__VA_ARGS__])
#define JJLogFunction NSLog(@"%s",__func__);
#else
/** 生产环境 */
#define JJLog(...) {}
#define JJLogFunction
#endif


#endif /* JJExtension_h */
