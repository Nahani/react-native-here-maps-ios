# react-native-here-maps-ios

## Getting started

`$ npm install react-native-here-maps-ios --save`

### Mostly automatic installation

`$ react-native link react-native-here-maps-ios`

## Usage
```javascript
import RNHereMapsIos from 'react-native-here-maps-ios';

<RNHereMapsIos
  style={{ flex: 1 }}
  mapCenter={{
    latitude: 40.89962,
    longitude: 29.22657
  }}
  markersList={[
    {
      latitude: 40.89962,
      longitude: 29.22657
    }
  ]}
/>
```

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-here-maps-ios` and add `RNHereMapsIos.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNHereMapsIos.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<
5. Add the following lines to the pod file.

```POD
pod 'HEREMapsStarter'
```

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.RNHereMapsIosPackage;` to the imports at the top of the file
  - Add `new RNHereMapsIosPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-here-maps-ios'
  	project(':react-native-here-maps-ios').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-here-maps-ios/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-here-maps-ios')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNHereMapsIos.sln` in `node_modules/react-native-here-maps-ios/windows/RNHereMapsIos.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Here.Maps.Ios.RNHereMapsIos;` to the usings at the top of the file
  - Add `new RNHereMapsIosPackage()` to the `List<IReactPackage>` returned by the `Packages` method
  
