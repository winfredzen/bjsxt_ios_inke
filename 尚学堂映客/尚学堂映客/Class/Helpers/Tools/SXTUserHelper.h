//
//  SXTUserHelper.h
//  尚学堂映客
//
//  Created by 大欢 on 16/8/31.
//  Copyright © 2016年 大欢. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 用户帮助类
 */
@interface SXTUserHelper : NSObject

+ (instancetype)sharedUser;

@property (nonatomic, copy) NSString * username;

@property (nonatomic, copy) NSString * iconUrl;

+ (BOOL)isAutoLogin;

+ (void)saveUser;



@end
