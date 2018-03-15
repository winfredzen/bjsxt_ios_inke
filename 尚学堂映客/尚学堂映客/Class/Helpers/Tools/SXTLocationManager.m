//
//  SXTLocationManager.m
//  尚学堂映客
//
//  Created by 王振 on 2018/3/13.
//  Copyright © 2018年 大欢. All rights reserved.
//

#import "SXTLocationManager.h"
#import <CoreLocation/CoreLocation.h>

@interface SXTLocationManager ()<CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager *locManager;

@property (nonatomic, copy) LocationBlock block;

@end

@implementation SXTLocationManager

+ (instancetype)sharedManager
{
    static SXTLocationManager *_manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[SXTLocationManager alloc] init];
    });
    return  _manager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _locManager = [[CLLocationManager alloc] init];
        [_locManager setDesiredAccuracy:kCLLocationAccuracyBest];
        _locManager.distanceFilter = 100;
        _locManager.delegate = self;
        
        if (![CLLocationManager locationServicesEnabled]) {
            NSLog(@"开启定位服务");
        }else {
            CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
            if (status == kCLAuthorizationStatusNotDetermined) {
                [_locManager requestWhenInUseAuthorization];
            }
        }
        
    }
    return self;
}

#pragma mark --  CLLocationManagerDelegate
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    CLLocationCoordinate2D coor = newLocation.coordinate;
    NSLog(@"%@, %@", @(coor.latitude), @(coor.longitude));
}


- (void)getGps:(LocationBlock)block
{
    self.block = block;
    [_locManager startUpdatingLocation];
}

@end









