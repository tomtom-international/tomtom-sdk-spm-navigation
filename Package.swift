// swift-tools-version: 5.6

// © 2022 TomTom N.V. All rights reserved.
//
// This software is the proprietary copyright of TomTom N.V. and its subsidiaries and may be
// used for internal evaluation purposes or commercial use strictly subject to separate
// license agreement between you and TomTom N.V. If you are the licensee, you are only permitted
// to use this software in accordance with the terms of your license agreement. If you are
// not the licensee, you are not authorized to use this software in any manner and should
// immediately return or destroy it.

import PackageDescription

let sdkVersion = "0.2.2163"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "08fdc892818a9a4452505b9da718fbbf1bc2c1cf31b678d455d094fbb537b6ac", dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKNavigationClientInternal",
        "TomTomSDKNavigationServiceInternal",
        "TomTomSDKNavigationPositioningInternal",
        "TomTomSDKNavigationMapMatcherPredictionInternal",
        "TomTomSDKFrameworkMemChannelInternal",
        "TomTomSDKNavigationDrivingAssistanceClientInternal",
        "TomTomSDKNavigationTextGenerationInternal",
        "TomTomSDKDynamicRoutingApi",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFrameworkLoggingInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFrameworkHTTPInternal", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKNavigationView", sha: "701801bd2254cab263351d903a5e215378f0bb93dbf40a96e9d46e23301de016", dependencies: [
        "TomTomSDKNavigationEngine",
        "TomTomSDKTextToSpeech",
        "TomTomSDKSystemTextToSpeechEngine",
        "TomTomSDKTextToSpeechEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKUIComponents", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKTextToSpeechEngine", sha: "9640b65d18db1269739631e09fcbeef1a6fc3411b28caac8a966b8ff89bee429"),
    Module("TomTomSDKSystemTextToSpeechEngine", sha: "7572d3102d8f3c86dcb0cc31e4582413077bcfaebe0f9d992c6176e58a335895", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "bd39269407302c238ec366ba3cac110e50a66eb616dd55e655e5f7cd44e8ba21", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDynamicRoutingApi", sha: "1eb6cd8c9d9518b00fc37bd18697be55818485b4527bba40f4a47e79e5dad97a", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKOnlineDynamicRoutingApi", sha: "ebc2285ee5cfb7aaf8ed847ee5bfc73e9b85942dc44dd6d74aab820f116c3e22", dependencies: [
        "TomTomSDKDynamicRoutingApi",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKNavigationVisualizationAddon", sha: "3109602d574ac61f4e96cc78c3c34972f96d7690d5ba8c3089eb6fb113431ab1", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapsDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKFrameworkClientCommonInternal", sha: "c9edfbdbdeef30f422b0716a236fddb91b4704e665c767db3dcff628edcc83a8", version: "17.74.0", isProduct: false),
    Module("TomTomSDKNavigationDrivingAssistanceClientInternal", sha: "766ce1a214ab43d4f73c712370dc5531c37324f926dc337d40b0f17f796b5038", version: "17.74.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKFrameworkMemChannelInternal", sha: "b83bc922dbf0e5068d7cf82d1346d5f54597c1af1f998ff9ee42c1dece85b05d", version: "17.74.0", isProduct: false),
    Module("TomTomSDKNavigationClientInternal", sha: "1e3e6aa59bc9e1f258e084e5fde5462064b81e79da94eb804d9f527c9c9b226d", version: "17.74.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKFrameworkSecurityInternal", sha: "8462679d0c2ad7254a8ec37b50f6d47e326e5225c5c8d00e06864ec0b604b595", version: "17.74.0", isProduct: false),
    Module("TomTomSDKNavigationServiceInternal", sha: "ade89ce64917ad511810f1cbdca2a4c4c973b5062010ef503b1f6b70acc4f08d", version: "17.74.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKNavigationPositioningInternal", sha: "c16c2decc0d316623f09e68a1d0006b31ba9e64affe02a9374b894c702daf4a6", version: "17.74.0", isProduct: false),
    Module("TomTomSDKNavigationMapMatcherPredictionInternal", sha: "fdf14cb16ceeb107ecd7a72b79897b0ec025c0d958d3a435a03a83e1e0a5ffb5", version: "17.74.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKNavigationTextGenerationInternal", sha: "33dc57c79b44537e3b4ac434da800419046bb1e068095ec6f82a2bb60732425b", version: "17.74.0", isProduct: false),
]

let package = Package(
    name: "TomTomSDKNavigation",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: modules.products,
    dependencies: [
        .package(url: "https://github.com/tomtom-international/tomtom-sdk-spm-core", exact: Version(stringLiteral: sdkVersion)),
    ],
    targets: modules.targets,
    swiftLanguageVersions: [.v5]
)

private extension String {
    func artefactUrl(version: String) -> String {
        "https://repositories.tomtom.com/artifactory/spm/TomTomSDK/Navigation/binaries/\(self)/\(version)/\(self).zip"
    }

    var wrapperName: String {
        return self + "Wrapper"
    }
}

struct Module {
    let frameworkName: String
    let sha: String
    let dependencies: [ModuleDependency]
    let version: String
    let isProduct: Bool

    init(_ frameworkName: String, sha: String, version: String = sdkVersion, isProduct: Bool = true, dependencies: [ModuleDependency] = []) {
        self.frameworkName = frameworkName
        self.sha = sha
        self.version = version
        self.isProduct = isProduct
        self.dependencies = dependencies
    }

    var product: Product? {
        return isProduct ? .library(name: frameworkName, targets: [wrapperName]) : nil
    }

    var wrapperName: String {
        frameworkName.wrapperName
    }

    var targets: [Target] {
        let binaryTargetDependency: Target.Dependency = .target(name: frameworkName)
        let dependenciesTargets: [Target.Dependency] = dependencies.map { $0.dependency }
        let mainTargetDependencies = [binaryTargetDependency] + dependenciesTargets
        let mainTarget: Target = .target(name: wrapperName, dependencies: mainTargetDependencies)
        let binaryUrl = frameworkName.artefactUrl(version: version)
        let binaryTarget: Target = .binaryTarget(name: frameworkName, url: binaryUrl, checksum: sha)

        return [mainTarget, binaryTarget]
    }
}

struct ModuleDependency {
    let name: String
    let package: String?

    var dependency: Target.Dependency {
        if let package = package {
            return .product(name: name, package: package)
        }

        return .target(name: name.wrapperName)
    }

    static func packageDependency(_ name: String, package: String) -> ModuleDependency {
        return ModuleDependency(name: name, package: package)
    }
}

extension ModuleDependency: ExpressibleByStringLiteral {
    init(stringLiteral value: String) {
        self.init(name: value, package: nil)
    }

    public typealias StringLiteralType = String
}

extension Array where Element == Module {
    var products: [Product] {
        compactMap { $0.product }
    }

    var targets: [Target] {
        flatMap { $0.targets }
    }
}
