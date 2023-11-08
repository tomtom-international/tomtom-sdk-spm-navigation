// swift-tools-version: 5.7

// © 2022 TomTom N.V. All rights reserved.
//
// This software is the proprietary copyright of TomTom N.V. and its subsidiaries and may be
// used for internal evaluation purposes or commercial use strictly subject to separate
// license agreement between you and TomTom N.V. If you are the licensee, you are only permitted
// to use this software in accordance with the terms of your license agreement. If you are
// not the licensee, you are not authorized to use this software in any manner and should
// immediately return or destroy it.

import PackageDescription

let sdkVersion = "0.32.0"

let package = Package(
    name: "TomTomSDKNavigationFrameworks",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [ /* products are set later */ ],
    dependencies: [
        .package(url: "https://github.com/tomtom-international/tomtom-sdk-spm-core", exact: Version(stringLiteral: sdkVersion)),
    ],
    targets: [ /* targets are set later */ ],
    swiftLanguageVersions: [.v5]
)

let modules: [Module] = [
    Module("TomTomSDKNavigationEngines", sha: "1870f15c8a85d70f538fcd2723aa9b672deded0ce413d44ddc0ccc682aae9b38", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutePlanner"),
    ]),
    Module("TomTomSDKNavigation", sha: "3c03e0cdc6e26f6a1d8771775b51e195172fe4cad0d5738fc7f274aeba37befe", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKRouteReplannerInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTextGenerationInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKVehicle"),
    ]),
    Module("TomTomSDKNavigationUI", sha: "32d8a6354942d9ad520d374900fd3856256145f2535cf2adbdc422c7bb610168", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKTextToSpeech"),
        .navigationPackageModule("TomTomSDKDefaultTextToSpeech"),
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKVehicle"),
    ]),
    Module("TomTomSDKTextToSpeechEngine", sha: "afd17d59df6c027ba398b60aff3ad410c686949885b215d3b78b96b155029a07", version: "0.32.0"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "8b6fe9a5819139d9993f822eddc3fa0f371619e9911507c362f3a5649cd83e13", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKTextToSpeech", sha: "2d02d923877383c474fd8187798ac785a875935301ad879c3048aa5ef42df6fb", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "a45abd7cdf143d1764b0f785cb0e536949abd73b8738b4444c0f94548fff9615", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependency
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDataManagement", sha: "746f5cb198715db30a2e04f38e27d8aaee91b78d9e58216a17ad3a266e0dbad0", version: "0.32.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKUnifiedLocationDecoder", sha: "40cef591efe80df8074af2fe249f3dd411d43086cd43392efe2f633a935059c6", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingOpenLRProjectionInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "2cc8636a445e13a4ed5f0a9f46371460c0fdf1bd62b40769ab27cb56ed76d131", version: "0.32.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "437cfc221f2a19a0b7bd038522422df476bea115180ba51234b081a469b622bc", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "387b303e20ae7779d39b82d9a7b615d51d152f1248bddc4911064b273d3b60d8", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKRouteReplannerInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
    ]),
    Module("TomTomSDKNavigationVisualization", sha: "0885eaef9c5c02575950a722ed674d700de4623708dfcdb13289e955d96c4dcf", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutingVisualization"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "1a670dbd4726241a047cf4ef0902667350c0771a5c565e836cb210043daa15f6", version: "0.32.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "0c9319d8312f71e3878dfd6503786b304381392d1bbab0a143b0d97dc97f91ea", version: "0.32.0"),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "0a997481c3c2896e4585cbdc531ca2e26ecc0fffba267f62e0a2d7ef104453e0", version: "0.32.0"),
    Module("TomTomSDKNavigationTileStore", sha: "583c9bb32088afd1fc4500eb0e2a76a927d3e5ce0a8dae08129893b6bc93c76c", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingFrameworkSecurityInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKBindingNDSLiveTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTilingInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "4617dc54daab1ebc665ea549c61fa82cc17d46d4ee414549cfafed2d5506141a", version: "0.32.0"),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "6d6f6f9ec865d93c6acc9776a1dcc76bf17b02f3baa96ca77d93568c194d9094", version: "0.32.0"),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "c77ab253e94333824a666a66ef8c765b5a3c5ecd6981614ae752534325b1cb14", version: "0.32.0"),
    Module("TomTomSDKBindingOpenLRProjectionInternal", sha: "3c833c2600c85a03b4079a90b8ab92994de104a188df2f9b1085416730fc1dba", version: "0.32.0"),
    Module("TomTomSDKBindingNDSLiveTileStoreAccessInternal", sha: "67da13037faf0e94705ca60a6b89fcc92aed03fd6ce5bdc56d7d52397ef4fca4", version: "0.32.0"),
    Module("TomTomSDKBindingNavigationTilingInternal", sha: "0ab5b0a5f2d38e1097bb6832522c3bad5dbb056955c5672d748d73844caa3592", version: "0.32.0"),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "62b5615756e58a54469e52a68234746e3a5f99273274f267aaa486a733345c20", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineCommon"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKRouteProjectionEngineCommon", sha: "4927ffffd0bb0ec4647d64b7f95825255c2566651c85f7c107f27b5ef64b8f76", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "73e432d56bce1c9a7a1fdf695c0b9b11cb0d2be87a65a716307741077c1aea68", version: "0.32.0"),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "2355d7bd5727204fff8429c06cd7f534bfe71bee8804472f848918bf39eed70c", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingMapMatchingInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "50ead2ea76c43ce8f76791649f844550deb66bbe71de954be8c7fd2f5577ea3c", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingMapMatchingInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKMapMatchingEngineCommon"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKLocationContextProviderEngineTileStore", sha: "db38a8fac9a8a41ec55bcfc7f369c5e6b891cfd1edc0df1998906483ba1fc162", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingLocationContextProviderInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKNavigationHorizonDataAdapter", sha: "f6f724b358b2d00634dd498c2157e523864815c67ab5742ab31fdeb4b145cce9", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSafetyCameras", sha: "60f25b9b6d8a94a45868707c0026b364b3a97beb5cc26f848903e9fe3c006b40", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKMQTT"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSafetyLocationsDataAdapterOnline", sha: "5a73e478cb8797552f94ab088ea7536545e7934b2fb768e514dde7ab48b780ff", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKSafetyCameras"),
        .navigationPackageModule("TomTomSDKMQTT"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKMQTT", sha: "6d0cfb4b0041d0a36cca046b0cce8606f910cf6b794c3053ebeeec21895ee2b2", version: "0.32.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazards", sha: "3fe994610a11e93e5436f0a6afa14e0e1aafd72a770e3153cb3e4584833e486f", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKMQTT"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazardsDataAdapterOnline", sha: "3bdb142c1916a23c7391668bdac11f9c00409ee88c9aa425b5f49167e20d2849", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKHazards"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationTracesRecorder", sha: "e73aad0fc968d8979ca9bcfde0767a7a9457da54b482afec3facf5610afa7d69", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKNavigationOffRoad", sha: "d965a7d380aa5f9f7b9feecabcf8b120adbf04fb9c4586ade16c1438f022d681", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKMapMatchingEngineCommon"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKVehicle"),
    ]),
    Module("TomTomSDKDataStoreMaintenanceEngine", sha: "fd4f2a4bd29d518c69b028fcd7f048a7a1d82826a72b068e6b4a2cfd333e3e64", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKDataManagement"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonTileStoreMapInternal", sha: "403b923afa0f9454c1acd0469cc831ed7dff0edff1606fd0010529b25dc10566", version: "0.32.0"),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "40e20ce586c97d5ab095490af81c2b25eac33e5de957e787cdaa5df4e6c3b56e", version: "0.32.0"),
    Module("TomTomSDKHorizonEngineCommon", sha: "eef0c34ee2a611991e4f0be2df7297c65a8b3e22d65061073c3669e2dbb81d9a", version: "0.32.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoute"),
        // navigation package dependency
        .navigationPackageModule("TomTomSDKBindingVehicleHorizonInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKHazardsDataAdapterOnline"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKSafetyLocationsDataAdapterOnline"),
        .navigationPackageModule("TomTomSDKDataManagement"),
    ]),
    Module("TomTomSDKHorizonEngineTileStore", sha: "54ecfafe33316f2aa7962a86b20888badb25ca2157eccf2146bb9bbb26b3bc8d", version: "0.32.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        // navigation package dependency
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKHorizonEngineCommon"),
        .navigationPackageModule("TomTomSDKBindingVehicleHorizonTileStoreMapInternal"),
        .navigationPackageModule("TomTomSDKUnifiedLocationDecoder"),
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
    ]),
    Module("TomTomSDKNavigationOnline", sha: "51a6eb1ef9ea854c87d95918db1fbd89afee9cb41d87c5a2d9faf0accabcc72d", version: "0.32.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKDataStoreMaintenanceEngine"),
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKLocationContextProviderEngineTileStore"),
        .navigationPackageModule("TomTomSDKMapMatchingEngineTileStore"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineTileStore"),
        .navigationPackageModule("TomTomSDKHorizonEngineTileStore"),
        // core package dependencies
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKVehicle"),
    ]),
    Module("TomTomSDKBindingOpenLRInternal", sha: "4333815142b0b0cf9289b9fdbfcd03062a1c13a4674171626e1999562ea7e046", version: "0.32.0"),
]

package.products = modules.products
package.targets = modules.targets

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
        ModuleDependency(name: name, package: package)
    }

    static func corePackageModule(_ name: String) -> ModuleDependency {
        ModuleDependency(name: name, package: "tomtom-sdk-spm-core")
    }

    static func navigationPackageModule(_ name: String) -> ModuleDependency {
        ModuleDependency(name: name, package: nil)
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
