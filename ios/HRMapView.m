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


- (void)setMapCenter:(NSDictionary *)mapCenter
{
    RCTLogInfo(@"Set center map to %f and %f", [[mapCenter objectForKey:(@"latitude")] doubleValue], [[mapCenter objectForKey:(@"longitude")] doubleValue]);
    
    if (![mapCenter isEqual:_mapCenter]) {
        _mapCenter = [mapCenter copy];
        NMAGeoCoordinates* coord = [[NMAGeoCoordinates alloc]
                                    initWithLatitude: [[mapCenter objectForKey:(@"latitude")] doubleValue]
                                    longitude:[[mapCenter objectForKey:(@"longitude")] doubleValue]];
        [_mapView setGeoCenter:coord
                     zoomLevel:NMAMapViewPreserveValue
                 withAnimation:NMAMapAnimationNone];
    }
}


- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
{
    if ((self = [super init])) {
        // Do any additional setup after loading the view, typically from a nib.
        //set geo center
        
        
        _mapView = [[NMAMapView alloc] init];
        
        NMAGeoCoordinates *geoCoordCenter =
        [[NMAGeoCoordinates alloc] initWithLatitude:49.260327 longitude:-123.115025];
        [_mapView setGeoCenter:geoCoordCenter withAnimation:NMAMapAnimationNone];
        _mapView.copyrightLogoPosition = NMALayoutPositionBottomCenter;
        
        //set zoom level
        _mapView.zoomLevel = 13.2;
       
       
        
        
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

