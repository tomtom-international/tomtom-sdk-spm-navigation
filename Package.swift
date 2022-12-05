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

let sdkVersion = "0.2.2884"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "da2447c1409cc2c17758054238dcd06e795a938c70ddc545c38316450a99f053", version: "0.2.2884", dependencies: [
        "TomTomSDKBindingNavigationTextGenerationInternal",
        "TomTomSDKRouteReplanner",
        "TomTomSDKRouteReplannerInternal",
        "TomTomSDKBindingFrameworkClientCommonInternal",
        "TomTomSDKBindingNavigationClientInternal",
        "TomTomSDKBindingNavigationServiceInternal",
        "TomTomSDKBindingNavigationPositioningInternal",
        "TomTomSDKBindingNavigationMapMatcherPredictionInternal",
        "TomTomSDKBindingNavigationDrivingAssistanceClientInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKBindingFrameworkLoggingInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKBindingFrameworkHTTPInternal", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKNavigationUI", sha: "36c1f8b341dd87bac2ea840828027cd7d5518dc8765a36f4e9a14b946581a11b", version: "0.2.2884", dependencies: [
        "TomTomSDKNavigationEngine",
        "TomTomSDKTextToSpeech",
        "TomTomSDKDefaultTextToSpeech",
        "TomTomSDKTextToSpeechEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKCommonUI", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKTextToSpeechEngine", sha: "c218f694727cefbe2ed22ebae61c1129d6331e051521e97908365ab764e40e28", version: "0.2.2884"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "bb00561aadf528ee8651f3df6806804b50b6a17ba64caa1f6afb82979bf34e65", version: "0.2.2884", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "abbfa956f6b2487af4cc0aae1a2b4057ab09a02cac73bfed08fbf87ad862647e", version: "0.2.2884", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "4d64352a355a9d933d260c3eac45bf0ec37472057c0586df089c70b1d49850ac", version: "0.2.2884", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKDataManagement", sha: "6e818ac5e02f7992cca10e9b2638a258e8c64d40ca685c78680aaf47edbc0961", version: "0.2.2884", dependencies: [
        "TomTomSDKDataStoreUpdater",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "e8e3901c7d8a570725cd08c0a86e9ba4bfffdf480315ffdead7f5f7be50cbbe6", version: "0.2.2884", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "b67cf75d1ea00fc1a7e172c13660524f9b0d164bb4eaee4b1876fc4626aac421", version: "0.2.2884", dependencies: [
        "TomTomSDKRouteReplanner",
        // core package dependencies
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "8848be55d1c350a730b84ae56c9177f7ed683b8d6d555373a207127661c99a75", version: "0.2.2884", dependencies: [
        "TomTomSDKRouteReplanner",
        "TomTomSDKRouteReplannerInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonNavigationVisualization", sha: "7009d4c579d194c07fe69fe5d311b573ceb9df7b801e6e2e096851aef6ccade8", version: "0.2.2884", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "a6efb139ef63b915a9a87ded591ad40d77ffef01cf4475731e5c0e4a806b113a", version: "0.2.2884", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingFrameworkClientCommonInternal", sha: "2361f60708608728930cd0e245405c032f7631507c980ece09c0e40f32f1b96e", version: "0.2.2884", isProduct: false),
    Module("TomTomSDKBindingNavigationDrivingAssistanceClientInternal", sha: "560ebe02efcb5d0a59c622371f29af307f2d808392fc6169f2419d9accd6d0cd", version: "0.2.2884", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingFrameworkMemChannelInternal", sha: "0f7f780abd7d6a5ffb575da708ada65a74eaacddc831bbadd3e3e31a526aad74", version: "0.2.2884", isProduct: false),
    Module("TomTomSDKBindingNavigationClientInternal", sha: "caf0dcd5cca4120800239d3cea9232e4f8c072a5b5171ae3ec014e29d971a670", version: "0.2.2884", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
        "TomTomSDKBindingFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "da26f97600d3737cbc9e266f2bbfdd5ee45fc8c211e0c37d239792f53b79c386", version: "0.2.2884", isProduct: false),
    Module("TomTomSDKBindingNavigationServiceInternal", sha: "0d4cad2edd6e0ac3b59384f506f639e3b9e84a18954fb2ea728da65515680609", version: "0.2.2884", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKBindingNavigationPositioningInternal", sha: "ae204f7f87cec1fdef1328c3716c295f00660ef6bee47687129a6a5bf3d091a0", version: "0.2.2884", isProduct: false),
    Module("TomTomSDKBindingNavigationMapMatcherPredictionInternal", sha: "d48e5e764466c38167f7b9f3ea66d5acef38609251e328b5f1323c21038eb4a7", version: "0.2.2884", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "45a01263a33683e8ac94bce11e547878139a94d293b24994318a0126146c494f", version: "0.2.2884", isProduct: false),
    Module("TomTomSDKNavigationTileStore", sha: "a756cac889be4741bab3989b3d7929bf80f2a512956715350790d3b4af2fcd77", version: "0.2.2884", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKDataStoreUpdater",
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKBindingFrameworkSecurityInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "cae28e9f524dc125c8a20b98f33fa3eb58bc8b1bb7dffd4f7fdcf725f3312f7b", version: "0.2.2884", isProduct: false),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "f917f31d5f32c4ca84e8ee8abf4ea057fd1bc7b3b46b371c92f76222cd0c7288", version: "0.2.2884", isProduct: false),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "be121cb0dcff31c0a1665b30e78d1a00525aa2646ff1a454b4251d7a885c8e24", version: "0.2.2884", isProduct: false),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "2cebf9add94d7ed2908748cfc121233fd32f409d84a04fe9f791250463138fd2", version: "0.2.2884", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        "TomTomSDKBindingRouteProjectionInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKNavigationEngine",
        "TomTomSDKNavigationTileStore",
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "5b36d4fb2806ecf6da579dae0c5c5e1d401e01bb3f2b5a08ca153def3a495693", version: "0.2.2884", isProduct: false),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "c9139ae24a7d9743c86406b6f7209dab426aaf8283057ffd738d19dd5364a4c5", version: "0.2.2884", isProduct: false, dependencies: [
        "TomTomSDKBindingMapMatchingInternal",
        "TomTomSDKDataManagement",
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "7d7fb6ac57c01c3f02cceaceba1a7436a6416ba4df1227c39e08f5d3b803daad", version: "0.2.2884", isProduct: false, dependencies: [
        "TomTomSDKBindingMapMatchingInternal",
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        "TomTomSDKDataManagement",
        "TomTomSDKMapMatchingEngineCommon",
        "TomTomSDKNavigationEngine",
        "TomTomSDKNavigationTileStore",
        // core package dependencies
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKLocationContextProviderEngineTileStore", sha: "c5b3d86d0703c02d9fca8f508107c831937dbee30b7a0f885e4dca18541b9e86", version: "0.2.2884", isProduct: false, dependencies: [
        "TomTomSDKBindingLocationContextProviderInternal",
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        "TomTomSDKNavigationEngine",
        "TomTomSDKNavigationTileStore",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
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

    init(_ frameworkName: String, sha: String, version: String, isProduct: Bool = true, dependencies: [ModuleDependency] = []) {
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
