//
//  SXTLocationManager.h
//  尚学堂映客
//
//  Created by 王振 on 2018/3/13.
//  Copyright © 2018年 大欢. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^LocationBlock)(NSString *lat, NSString *lon);

@interface SXTLocationManager : NSObject

+ (instancetype)sharedManager;

- (void)getGps:(LocationBlock)block;

@end
