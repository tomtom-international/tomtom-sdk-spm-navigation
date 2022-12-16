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

let sdkVersion = "0.2.3010"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "24f31b170d2398975758759981ec24be30d55a6507f026d96cff16f1f1454a88", version: "0.2.3010", dependencies: [
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
    Module("TomTomSDKNavigationUI", sha: "c2cab4c751e4409ad93e6eb91541a0bdbaae6b314cf8c47bb4cd39cd3941de1a", version: "0.2.3010", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "d56766b5c80581ebe2726e59a354c970603594c5bd7ebfb0efce21d249849378", version: "0.2.3010"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "bfb370c2175b0a071986e1859c31c91e4879cf0909d173c288f34a57ef54573b", version: "0.2.3010", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "e22145c3d7cae83c2b4c42e71fb7c474d0d5504eaea60d5e14044ecb59a6a549", version: "0.2.3010", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "3416e9e8e7b62d4840cd079d0443faefbb75ca0752d88deb3e2547aa6ddfdea5", version: "0.2.3010", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKNavigationEngine",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKDataManagement", sha: "fed5e14161faea88c4e30e62050df7895ece936cf4ba697fbbb57fdf1d7a1190", version: "0.2.3010", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "31745cd8c42e0c0dd8f2f21bb38c8509713efe59d65a86e5e8e4bc86668664ac", version: "0.2.3010", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "5653efcc09e9bda994453d0544dd464bdf22aa7066df999b1ab0edc251a45ece", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKRouteReplanner",
        // core package dependencies
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "ee2f86f23bd68f6e7bb7564a2c63903f076877cdaceb04fa91ec950ae926beeb", version: "0.2.3010", dependencies: [
        "TomTomSDKRouteReplanner",
        "TomTomSDKRouteReplannerInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonNavigationVisualization", sha: "339fd367ce9c43140c95a423bec2bcf79b5ab180482efb2136e3c24887ef66b0", version: "0.2.3010", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "2e8e74f312b9e7740752b1c3520bb7b17715c0dc9d492c446fe9e3578da2a0d0", version: "0.2.3010", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingFrameworkClientCommonInternal", sha: "32090fa8c25f08d4e5b601bdc37adf66c81588705f978efc2f9ed4606a943414", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKBindingNavigationDrivingAssistanceClientInternal", sha: "52ac4ce03ff1e62b2703ce9d445472842bd45f73db1339ed82128226aa87b539", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingFrameworkMemChannelInternal", sha: "1fce6db718245971fb49dc07e79d11a914865b3884212867603b8f526fe3601d", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKBindingNavigationClientInternal", sha: "7550f48d8098e1eee7381f0a9a66dd37e29ced4ee9cf5ba79b67a5e0d7b2eacc", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
        "TomTomSDKBindingFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "d708fe9f5a48069b57b6d972a6db51ca705344e73da015c44b12aaf4c6c2cc20", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKBindingNavigationServiceInternal", sha: "06e58baed5db0218f863865f2f71c21db3903a324919071395ccb0e4e824541d", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKBindingNavigationPositioningInternal", sha: "edc90c0e3512c5edc5e14594daf4948a10db2c25d9bcc23790dd28d108bec851", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKBindingNavigationMapMatcherPredictionInternal", sha: "241eab7de50469f9a3f46bd41c5cbc505bc2742593231acc0b3ca6542b0896a2", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "7c9b87aa2cc96c48047a667f84fe94a58cb3ae3a70f3e2b1ae7cecfe459d5cd0", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKNavigationTileStore", sha: "7728ee8811dd8011dcdeef9436381e862cc44991bb4be731695627c286093fcc", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKDataManagement",
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKBindingFrameworkSecurityInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "dc65b89a377078607b1752d42196a9395ecc82e355ab49d0005cf7347ee9013c", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "2cbd0426a2d9843c4e639d72b4f6bb2bffad5ce3d21d18b96fadadda794f73cd", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "f2e34757e9245a78184326c3fc03e420fea2810fe291d9bae6659713ff74eb52", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKBindingNavigationTilingInternal", sha: "47d49f4b456404839006622273c8f3d3c5f9e96ffe9d181f99f5c43632f576a2", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "e00b6d83e877291ed0af7a9eeff88f2a1ccc82796df7dc3b2ad6b45fa39196dc", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        "TomTomSDKBindingRouteProjectionInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKNavigationEngine",
        "TomTomSDKNavigationTileStore",
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "4e8469cb02d7a59e290fa1e2f11d77cc09ba96006a738ae6c322199af380b91a", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "bcb13f99646e3e4fdfdfeabaae57a7e8144ef5a91092088e5b4fa1bad24f4a2b", version: "0.2.3010", isProduct: false, dependencies: [
        "TomTomSDKBindingMapMatchingInternal",
        "TomTomSDKDataManagement",
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "6c581ec3c90e179509c5eeb4bd79384d24c4b2ed181cdcab113a754e0ddbb0fc", version: "0.2.3010", isProduct: false, dependencies: [
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
    Module("TomTomSDKLocationContextProviderEngineTileStore", sha: "890bf2cb34ada6021ef35eebdbc609f1a8dbed58262d60553e1950a7c9a44a58", version: "0.2.3010", isProduct: false, dependencies: [
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
