//
//  SXTTabbar.h
//  自定义Tabbar
//
//  Created by 大欢 on 16/6/12.
//  Copyright © 2016年 大欢. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

typedef NS_ENUM(NSUInteger, SXTItemType) {

    SXTItemTypeLaunch = 10,//启动直播
    SXTItemTypeLive = 100,//展示直播
    SXTItemTypeMe,//我
};


/**
 自定义Tabbar
 */
@class SXTTabbar;

typedef void(^TabBlock)(SXTTabbar * tabbar,SXTItemType idx);

@protocol SXTTabbarDelegate <NSObject>

- (void)tabbar:(SXTTabbar *)tabbar clickIndex:(SXTItemType)idx;

@end

@interface SXTTabbar : UIView

@property (nonatomic, weak) id<SXTTabbarDelegate> delegate;

@property (nonatomic, copy) TabBlock block;

@end
