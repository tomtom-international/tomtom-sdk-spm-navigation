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

let sdkVersion = "0.2.2822"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "46a01a6c71116d9d9c6a6420df373eaa56df33e40fbdcda1c124fe84bbf8c8e2", version: "0.2.2822", dependencies: [
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
    Module("TomTomSDKNavigationUI", sha: "78af1758f7378d9e2806e0f8658941d7b1c4025fd0543d3a52490baa469d3050", version: "0.2.2822", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "8eafa6729663a790d6c8a6e180c59e49f4804ab2f9e6ab7b291538891057a578", version: "0.2.2822"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "6a7ad10b315bd43d503e6f5dff325896a8fd41510963f435e6a50be3ab6cae45", version: "0.2.2822", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "dbf4603fa6e05954de7186c6601b424f1d83fe54182adbad07cc2b904e817e90", version: "0.2.2822", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "11c021382f5ef7834a83423fee3b2e69ab7cb78919c3c3ab4f009b5307b35034", version: "0.2.2822", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKDataManagement", sha: "a90dcdc29b27c9c963c5df79375959e1b5482e9ecd2b9e407289c3dc9c8bc12e", version: "0.2.2822", dependencies: [
        "TomTomSDKDataStoreUpdater",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "3bb6d3fc9fe9b5d6f915caa0077c77f22743eb883ae46d84200c622ec263de7a", version: "0.2.2822", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "c2ad36f48f437b86a05d439aa3024b747d2fcd55b364ecbaabafa38066feff0f", version: "0.2.2822", dependencies: [
        "TomTomSDKRouteReplanner",
        // core package dependencies
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "b1e8c5f3484bd5d7500cb634b81162f53fe5b93591563021b7b079372453116c", version: "0.2.2822", dependencies: [
        "TomTomSDKRouteReplanner",
        "TomTomSDKRouteReplannerInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonNavigationVisualization", sha: "84350af8f97e967419714c0c8d614c5ddd00a45a4a4aecb68a2e7070db818349", version: "0.2.2822", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "b96c668b0b25207f0bea39879160575c5ecd4ad1b6f6a41938bd0d416af60ab1", version: "0.2.2822", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingFrameworkClientCommonInternal", sha: "39df287b0d5f405d82904d34817d31b3119da2b80e2fe218f802518e25a488a8", version: "0.2.2822", isProduct: false),
    Module("TomTomSDKBindingNavigationDrivingAssistanceClientInternal", sha: "6efdfce28ccd97815beb728fba39a095c7fd3412a9fe34960a4cfdb10989b67a", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingFrameworkMemChannelInternal", sha: "c44a10929fea030940c1654bf868d8d83ebdf5dbafa42a4f8ad6fcaa944c4b7a", version: "0.2.2822", isProduct: false),
    Module("TomTomSDKBindingNavigationClientInternal", sha: "24ecee1f36315a199788e831d149cac88644aa4d10986392edc5a3c0e9f65f47", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
        "TomTomSDKBindingFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "6a810392ae378fe6600f073e200dea7ae0176b8076fdb032a7aa29ee38cbda33", version: "0.2.2822", isProduct: false),
    Module("TomTomSDKBindingNavigationServiceInternal", sha: "8b05eaa4d8fe95bca217ab01f0e5b8df2722640adc5c1ece6cc358699e3977e3", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKBindingNavigationPositioningInternal", sha: "4de915d1befb74cd652924fed18d0ab9a444b3c36ca3c9a1938c20d1cdf874bd", version: "0.2.2822", isProduct: false),
    Module("TomTomSDKBindingNavigationMapMatcherPredictionInternal", sha: "2dc6fb4b7e991dae7f7b410bc5123c4114f35b5b899298464334469f35f73c7b", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "4c89bb58da0b36180497d7a1135abd410e808fbc0cd69a35bebe841f7f7fa77f", version: "0.2.2822", isProduct: false),
    Module("TomTomSDKNavigationTileStore", sha: "3858d18f13d1cbc4b8fb5f5b66928157daec5760f9bcdcb485c2e6094c1b293c", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKDataStoreUpdater",
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKBindingFrameworkSecurityInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "d0487ef8299fb6517af2ae04d26c8c648a83de28bf073a4a0ca8cf2ef72228f9", version: "0.2.2822", isProduct: false),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "3a27acfb76aa1c1af1ff69ecb7df2cb39d6f78c80707767b90d83a1a36ff428d", version: "0.2.2822", isProduct: false),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "ca26385a2ace42ea8c490aa051e1df2f8e3fab653144abd728cbd045c6641cd4", version: "0.2.2822", isProduct: false),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "6dac496dd1452703f02cb29a46eafd972c4b485f53b1aca35663dd623e87171e", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        "TomTomSDKBindingRouteProjectionInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKNavigationEngine",
        "TomTomSDKNavigationTileStore",
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "3321010b42c5ac548891b3bc019bfc60c468475fc4c5591e5c69d4cadfb9e05a", version: "0.2.2822", isProduct: false),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "775c4cc6ea1805567c854adf59595c60f23a37d11f8584d019d87d4856d4e475", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingMapMatchingInternal"
        "TomTomSDKDataManagement"
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "d2ce81d1e077fafaa176362fb827ad6c0e39e2903c24bef4322ccb23166bbbc0", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingMapMatchingInternal"
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        "TomTomSDKDataManagement"
        "TomTomSDKMapMatchingEngineCommon",
        "TomTomSDKNavigationEngine",
        "TomTomSDKNavigationTileStore",
        // core package dependencies
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKLocationContextProviderEngineTileStore", sha: "7b62c7080fdaa57e635353fbcb500e6fc0a1cdebbb207dfcf51a098620333732", version: "0.2.2822", isProduct: false, dependencies: [
        "TomTomSDKBindingLocationContextProviderInternal"
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
