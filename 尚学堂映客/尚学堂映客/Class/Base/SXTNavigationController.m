//
//  SXTNavigationController.m
//  尚学堂映客
//
//  Created by 大欢 on 16/8/16.
//  Copyright © 2016年 大欢. All rights reserved.
//

#import "SXTNavigationController.h"

@implementation SXTNavigationController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
//    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"global_tittle_bg"] forBarMetrics:UIBarMetricsDefault];
    
     UIColor * radomcolor = [UIColor colorWithRed:36/255.0 green:215/255.0 blue:200/255.0 alpha:1];
    
    //导航栏背景色
    self.navigationBar.barTintColor = radomcolor;
    //导航栏字体颜色
    self.navigationBar.tintColor = [UIColor whiteColor];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.viewControllers.count) {//push的时候 隐藏底部的BottomBar
        
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
    
    
}

@end
