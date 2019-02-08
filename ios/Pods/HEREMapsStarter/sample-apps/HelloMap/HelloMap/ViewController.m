/*
 * Copyright (c) 2011-2018 HERE Global B.V. and its affiliate(s).
 * All rights reserved.
 * The use of this software is conditional upon having a separate agreement
 * with a HERE company for the use or utilization of this software. In the
 * absence of such agreement, the use of the software is not allowed.
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    self.mapView.zoomLevel = 13.2;
    [self.mapView setGeoCenter:[NMAGeoCoordinates geoCoordinatesWithLatitude:49.258867
                                                                   longitude:-123.008046]
                 withAnimation:NMAMapAnimationLinear];
    self.mapView.copyrightLogoPosition = NMALayoutPositionBottomCenter;
}

@end
