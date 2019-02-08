/*
 * Copyright (c) 2011-2018 HERE Global B.V. and its affiliate(s).
 * All rights reserved.
 * The use of this software is conditional upon having a separate agreement
 * with a HERE company for the use or utilization of this software. In the
 * absence of such agreement, the use of the software is not allowed.
 */

import UIKit

import NMAKit

class ViewController: UIViewController
{
    @IBOutlet weak var mapView: NMAMapView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mapView.useHighResolutionMap = true
        mapView.zoomLevel = 13.2
        mapView.set(geoCenter: NMAGeoCoordinates(latitude: 49.258867, longitude: -123.008046), animation: .linear)
        mapView.copyrightLogoPosition = NMALayoutPosition.bottomCenter
    }
}
