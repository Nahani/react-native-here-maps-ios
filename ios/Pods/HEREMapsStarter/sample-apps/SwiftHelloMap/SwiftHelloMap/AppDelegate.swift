/*
 * Copyright (c) 2011-2018 HERE Global B.V. and its affiliate(s).
 * All rights reserved.
 * The use of this software is conditional upon having a separate agreement
 * with a HERE company for the use or utilization of this software. In the
 * absence of such agreement, the use of the software is not allowed.
 */

import UIKit

import NMAKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {

        #error Please enter an app id and app code!
        // An app id and app code may be obtained from https://developer.here.com/develop/mobile-sdks
        // If a valid app id and app code is not entered the map will not render and other
        // SDK features will fail.

        let kHelloMapAppID = ""
        let kHelloMapAppCode = ""

        NMAApplicationContext.set(appId: kHelloMapAppID, appCode: kHelloMapAppCode)

        return true
    }
}
