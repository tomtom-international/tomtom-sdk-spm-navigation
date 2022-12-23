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

let sdkVersion = "0.2.3070"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "c5fbb22b6ba7a8f73551f5462857561e977c3f4fd2c80e238804365d279260d0", version: "0.2.3070", dependencies: [
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
    Module("TomTomSDKNavigationUI", sha: "fa2cac9ffac26e2ab27a92af7f7a13823367c028b3075b02f6b6a28ff3858ded", version: "0.2.3070", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "643c0f7bcf3ceaa6a3902bab51a10987ced858e0a57d93497da5c20fa05284c0", version: "0.2.3070"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "967e0ed1d81c8d8858bad06fd70d833b0808ac7d28d63b71d713a0da3a985696", version: "0.2.3070", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "1d4405bbeddf9f13779bf20f7703413c98d8a3e5da76bf52e3e67462cde9e36c", version: "0.2.3070", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "9d252d9b1886ed5516564bf52a668659d670f0a8c6cdd126de08c315dbcf3e7c", version: "0.2.3070", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKNavigationEngine",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKDataManagement", sha: "4c45abb7f3a485fa04e511c0cae0cc7e5ce2325f1f7a42fd742ead2748c10d2d", version: "0.2.3070", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "142aefef0afd6b96cc7576c9fcc88dd248a4eed3b4918e3ec4bb9ebfc1f1abc1", version: "0.2.3070", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "d6fdd5a25240dcf6864c4af19489e8e986eef3361aa8d14d05145a1677dc7676", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKRouteReplanner",
        // core package dependencies
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "c419ba449fa3b1127cc8b2541d19e4c760d06f2d147cd2db1df1e1348fe87832", version: "0.2.3070", dependencies: [
        "TomTomSDKRouteReplanner",
        "TomTomSDKRouteReplannerInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonNavigationVisualization", sha: "b28438be2d6c4fd5dc827349b6026250c0ac8dc148144da71a4dbfd62b02eee6", version: "0.2.3070", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "b0f37e0ef6565b1c7619ae98e9ac9d461b25e59006f7dc18e9d31448326c785a", version: "0.2.3070", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingFrameworkClientCommonInternal", sha: "b2d312606f7e12b07238dc2c57dc9737d62762c0ce1d6149d6affc6bf63e6ae5", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKBindingNavigationDrivingAssistanceClientInternal", sha: "da1c073fbc0f62152661c0175c0fea43f4ddad09861f3bcece62df43c80fd761", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingFrameworkMemChannelInternal", sha: "be45596f20b001293b1a09d48ef6d9ba9bcff34643f3f6fc8ad0bfd4402864d6", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKBindingNavigationClientInternal", sha: "758f24ce1ac57f95debbd36dd3c9a135344684f4db62e406ea42fe75f7e33181", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
        "TomTomSDKBindingFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "8c553638fc74f98bb83cf0deb96b4d2c889d6456596497e096e2fc2deaad6f24", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKBindingNavigationServiceInternal", sha: "383ca9dfdf47c3d4740d9a0dfb9ebefcb5ecf6677f04b4012fe8cc8bd3122ceb", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKBindingNavigationPositioningInternal", sha: "5100fca938e216392a3dff52aebf36c8cfc3b0cc45034d12719deb314b5dbc59", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKBindingNavigationMapMatcherPredictionInternal", sha: "80a09ee8ff418296a654b3b158b25f301f12f6de9507e29974931b22e85053e2", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "f539283396fc256aab3798366075d2fd94f610db3f5561d99ba9e19463522a65", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKNavigationTileStore", sha: "5148102ba7a82a0390c7dc352abe1974638f885532234625fdfd196c12f44c2b", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKDataManagement",
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKBindingFrameworkSecurityInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "ff865c45db8a77d03a1ed3182a3011e6fc7167e42fdc79cc3ebb4fb5e07b8c9d", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "c4223b3099f738489b0400fe6831ce96ca8ea6bbda4fe1deef1c8a066bf3466f", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "318ec9d987b85e4c91731fc346ad2d230a9c549d09942aee1a61c2b5a62e51d9", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKBindingNavigationTilingInternal", sha: "e8f3af2b07f8310f04c8bd9435f2d9edb62cb5cb7b5cb791494afc4eb49fb516", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "0488b642c5af0dde6b123a61ede26772cc2dd72acee6c04fecf5983968af6623", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        "TomTomSDKBindingRouteProjectionInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKNavigationEngine",
        "TomTomSDKNavigationTileStore",
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "d1b9c524c1d4b74b08182bc8225d6c9bd9b555313a9307dc900c7b441ed03701", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "9a58479745ab046694f1114c5bf9baf8c6e67a22ed72a4d0932abc8f6a628a38", version: "0.2.3070", isProduct: false, dependencies: [
        "TomTomSDKBindingMapMatchingInternal",
        "TomTomSDKDataManagement",
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "656b329d892607fd4b10bfbd186782cbb11f90a903dca5280c7cecf574d258b5", version: "0.2.3070", isProduct: false, dependencies: [
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
    Module("TomTomSDKLocationContextProviderEngineTileStore", sha: "74ce09a5f27f521a71362330151d46f923084be544bb0f0d03e3705718632328", version: "0.2.3070", isProduct: false, dependencies: [
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
