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

let sdkVersion = "0.2.3136"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "9a88c8a3f3d545a3fadde9e4fdd6604c60321354bf21df25c66f31868341479e", version: "0.2.3136", dependencies: [
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
    Module("TomTomSDKNavigationUI", sha: "c0eada0f9c10892a731ddb3cc9dd6780cc59d471b33e2dfb94267324c5ba1da5", version: "0.2.3136", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "abcd3dcdee4abb8e7756862d23450c8c75b745617fd2af054782c7498b2075f7", version: "0.2.3136"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "28c43d1ceac39d899ef13c427f62f199dff59ec67a075da7db47e6521ab9b33a", version: "0.2.3136", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "c598cd76bb73e1efbd3c228854feb7d01ac2abd47e3319a7a2acccefd09989d1", version: "0.2.3136", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "e6f801577c0f72f227eb6ccd6d633c6f5fb1e84e3a85651b802ad51c96bca4d0", version: "0.2.3136", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKNavigationEngine",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKDataManagement", sha: "53374c7818cb93a20fa497718a0f9da39fa41507d8ef40b12b9af9f74ab244d0", version: "0.2.3136", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "3bb89f03ad54e75a1c7d459353b405a1a5dedbf92b65bfea657742075f0207a4", version: "0.2.3136", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "3a808b449818b0b31f0a6324b12f576af6498bca2bb30859b6cc2eb1e2e85b4a", version: "0.2.3136", isProduct: false, dependencies: [
        "TomTomSDKRouteReplanner",
        // core package dependencies
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "be00c3ec70daab301f4270d012b47603ec8d3de3213e84038365c3165d7b970b", version: "0.2.3136", dependencies: [
        "TomTomSDKRouteReplanner",
        "TomTomSDKRouteReplannerInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonNavigationVisualization", sha: "6d3a2ee92f51529a4fd5bc4f538c40d43b01d205c699b6cda3445a8761f1a1e5", version: "0.2.3136", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "7ade7225aea1aa1eda2f22aa9347b150560260aa78ceb445db11c56b5a3e7acf", version: "0.2.3136", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingFrameworkClientCommonInternal", sha: "e9e4e29597eb6259f2aaa9a5e712e8a0f31c7bd892aa1e3b009320053f1e8d73", version: "0.2.3136", isProduct: false),
    Module("TomTomSDKBindingNavigationDrivingAssistanceClientInternal", sha: "a79020469291900edb9e9865f981bb672a27390eaaf739d27be7e534ba92ef11", version: "0.2.3136", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingFrameworkMemChannelInternal", sha: "009b3cff4cd569e73d10f91546044958950a44123ae4f70bbff126586fbcfa64", version: "0.2.3136", isProduct: false),
    Module("TomTomSDKBindingNavigationClientInternal", sha: "b68a418e0b057f73d65f8cc6529611d7666599b3af517b85f47c7fa1c6d0c306", version: "0.2.3136", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
        "TomTomSDKBindingFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "6fec03b3a111b3588c31068eafc8888bd7b3b519c6068bf73c01cfa730bfe24f", version: "0.2.3136", isProduct: false),
    Module("TomTomSDKBindingNavigationServiceInternal", sha: "7e3387932a1ea3f71cbaa0129e3cfd7ce1f07c1fde82373a07f8440e058294c8", version: "0.2.3136", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKBindingNavigationPositioningInternal", sha: "35c6b73deff104a9ce565d68a6b47029ffe23a88e3baea666b2931b1c729f20a", version: "0.2.3136", isProduct: false),
    Module("TomTomSDKBindingNavigationMapMatcherPredictionInternal", sha: "80f42cd7369c37e753a10ae1a6b5341161842d3ffc1540f23e0025919d263796", version: "0.2.3136", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "39a398acc5c1f5897ce48d79665b9558923bea9fd9b38d004042233d4aec02f2", version: "0.2.3136", isProduct: false),
    Module("TomTomSDKNavigationTileStore", sha: "c4b069869e91a329fc85865ff7d332976953994d7a3289d02ce579318a672db3", version: "0.2.3136", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKDataManagement",
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKBindingFrameworkSecurityInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "ca44dcfa1437e0bfe27b6ab3e5d7187f2dc4770adc32a945f4954a6af46ae67e", version: "0.2.3136", isProduct: false),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "1f3f630f30194b9515fecfbb3ff963c02119cec7828f409efdb9b9c7761e284a", version: "0.2.3136", isProduct: false),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "ec93da0c0b14594fd34e906b2cd39f31a02c333829553bd3b48e121f3e2a816c", version: "0.2.3136", isProduct: false),
    Module("TomTomSDKBindingNavigationTilingInternal", sha: "3ce9ab97cd812b3f27d41398ffa5e85188cf2fb7ed2a69fb03b3db43bd46c2ce", version: "0.2.3136", isProduct: false),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "9339fd10b167ce7b16c23fe4b1ecfb11f3e455e7328b9171e3482c407114d678", version: "0.2.3136", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        "TomTomSDKBindingRouteProjectionInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKNavigationEngine",
        "TomTomSDKNavigationTileStore",
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "e972b0f29eb6f1299ddafff41e4116fe5db74351a95fc5de73486bb15882e350", version: "0.2.3136", isProduct: false),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "8ba6494e55d2e17614688427084b427ac6dda9fa1049ae5278ed554d475b0c45", version: "0.2.3136", isProduct: false, dependencies: [
        "TomTomSDKBindingMapMatchingInternal",
        "TomTomSDKDataManagement",
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "7c8323965203d59a7876e764ec18ff5aad7404ba1e656adc01a418bd50f68728", version: "0.2.3136", isProduct: false, dependencies: [
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
    Module("TomTomSDKLocationContextProviderEngineTileStore", sha: "a39f99f7a60c388b441e4c0e965a1d412231d09a833b08a01bd03071c4527732", version: "0.2.3136", isProduct: false, dependencies: [
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
