/*
 * Copyright (c) 2011-2018 HERE Global B.V. and its affiliate(s).
 * All rights reserved.
 * The use of this software is conditional upon having a separate agreement
 * with a HERE company for the use or utilization of this software. In the
 * absence of such agreement, the use of the software is not allowed.
 */

### HelloMap ###

===========================================================================
DESCRIPTION:

Simple ObjC sample app to display an NMAMapView.

===========================================================================
INSTRUCTIONS (CocoaPods)

1) Register your app on developer.here.com to acquire HERE SDK credentials
    - Each app requires a unique set of credentials.
    - The registered bundle identifier must match the bundle identifier you
      will use in your project.

2) Run "pod install" or "pod update" in the root "HelloMap" folder to install
   the HERE SDK.

3) In the "General" settings of the App target:
    - Select an eligible provisioning profile or enable "Automatically
      manage signing".
    - Replace "com.yourcompany.HelloMap" with your own bundle identifier.

4) In AppDelegate.m:
    - Enter an app id and app code.

===========================================================================
INSTRUCTIONS (Without CocoaPods)

1) Register your app on developer.here.com to acquire HERE SDK credentials
    - Each app requires a unique set of credentials.
    - The registered bundle identifier must match the bundle identifier you
      will use in your project.

2) In the "General" settings of the App target:
    - Select an eligible provisioning profile or enable "Automatically
      manage signing".
    - Add NMAKit.framework to the "Embedded Binaries" section otherwise you
      will get a "dyld: Library not loaded: @rpath/NMAKit.framework/NMAKit"
      error at runtime.
    - Replace "com.yourcompany.HelloMap" with your own bundle identifier.

3) In the "Builds Settings" of the App target:
    - Ensure "Frameworks Search Paths" includes the location of
      NMAKit.framework. In this example app it is already set to
      "$(PROJECT_DIR)/../../framework".

4) In AppDelegate.m:
    - Enter an app id and app code.

===========================================================================
BUILD REQUIREMENTS:

* Xcode 9 & iOS 10 SDK or above
* HERE Starter SDK Version 3.5 or above

===========================================================================
TARGET PLATFORM:

* iOS 10.0 and above
