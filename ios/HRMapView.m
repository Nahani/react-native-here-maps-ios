//
//  HRMapView.m
//  RNHereMapsIos
//
//  Created by WeOpt Mac on 11/02/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "HRMapView.h"
#import "React/RCTEventDispatcher.h"
#import <React/RCTLog.h>

@import NMAKit;

@interface HRMapView ()


@end

@implementation HRMapView

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
{
    if ((self = [super init])) {
        // Do any additional setup after loading the view, typically from a nib.
        //set geo center
        
        RCTLogInfo(@"Blaba balab lalalal");
        
        self.mapView = [[NMAMapView alloc] init];
        
        NMAGeoCoordinates *geoCoordCenter =
        [[NMAGeoCoordinates alloc] initWithLatitude:43.7310944 longitude:7.4273204];
        [self.mapView setGeoCenter:geoCoordCenter withAnimation:NMAMapAnimationNone];
        self.mapView.copyrightLogoPosition = NMALayoutPositionBottomCenter;
        
        //set zoom level
        self.mapView.zoomLevel = 13.2;
        
        
        
        
    }
    
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.mapView.frame = self.bounds;
    [self addSubview:_mapView];
}

@end


