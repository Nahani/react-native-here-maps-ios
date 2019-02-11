// RNTMapManager.m
#import <MapKit/MapKit.h>
@import NMAKit;
#import <React/RCTViewManager.h>
#import "HRMapView.h"

@interface RNTMapManager : RCTViewManager
@end

@implementation RNTMapManager

RCT_EXPORT_MODULE()


- (UIView *)view
{    
    // return self.mapView;
    [NMAApplicationContext setAppId:@"0p2Xc0nzndhBi7OwUKeQ"
                            appCode:@"wOeyyp6FqqEoHjmybx5wHw"];
    
    NMAMapView *mapView= [[NMAMapView alloc] init];
    
    NMAGeoCoordinates *geoCoordCenter =
    [[NMAGeoCoordinates alloc] initWithLatitude:43.7310944 longitude:7.4273204];
    [mapView setGeoCenter:geoCoordCenter withAnimation:NMAMapAnimationNone];
    mapView.copyrightLogoPosition = NMALayoutPositionBottomCenter;
    //set zoom level
    mapView.zoomLevel = 13.2;
    
    return mapView;
}

@end
