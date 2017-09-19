//
//  SXTCacheHelper.h
//  尚学堂映客
//
//  Created by 大欢 on 16/8/30.
//  Copyright © 2016年 大欢. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 缓存帮助类
 */
@interface SXTCacheHelper : NSObject

+ (NSString *)getAdvertiseImage;

+ (void)setAdvertiseImage:(NSString *)imageName;

@end
