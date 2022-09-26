# TomTomSDKNavigation

The TomTomSDKNavigation package provides iOS modules that help you bring map visualization, location handling, and driver guidance to your iOS application with minimal effort.

The Navigation SDK issues visual and audio turn-by-turn instructions at the right moments and smartly handles events like deviations and traffic jams in the route ahead.

It is also highly customizable, letting customers redefine various aspects of the guidance logic.

> The Navigation SDK for iOS is only available upon request. [Contact us](https://developer.tomtom.com/tomtom-sdk-for-ios/request-access) to get started.

## Requirements

1. Xcode 13.3+
1. Swift 5.6+
1. Deployment target: iOS 13+

## Installation

1. Set up Artifactory access.   
 * [Contact us](https://developer.tomtom.com/tomtom-sdk-for-ios/request-access) to get access to the SDK. 
 * Sign in to [Artifactory](https://repositories.tomtom.com) 
 * Expand user menu in the top right corner
 * Select "Edit profile" -> "Generate an Identity Token"
 * Copy your token for the next step
 * Create or update the ~/.netrc file in your home directory so that it contains the entry:
```
machine repositories.tomtom.com
login <YOUR_LOGIN>
password <YOUR_TOKEN>
```
2. Integrate the TomTomSDKNavigation package: 
 * Add the TomTomSDKNavigation package to your project from Xcode:
    * Select “File” → “Swift Packages” → “Add Package Dependency”.
    * Enter https://github.com/tomtom-international/tomtom-sdk-spm-navigation.
 * Or, if you are creating a framework, add the package dependency to your `Package.swift` file:
```swift
dependencies: [
    .package(url: "https://github.com/tomtom-international/tomtom-sdk-spm-navigation", .exact("<SDK_VERSION>"))
]
```

> Please use exact versioning as the semantic versioning is not fully supported yet.  

## Usage

For more information, please refer to the [TomTom Navigation SDK documentation](https://developer.tomtom.com/ios/navigation/documentation/overview/introduction).
