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

let sdkVersion = "0.31.0"

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
    Module("TomTomSDKNavigationEngines", sha: "35f5f9db97cd227ba3935084a12eb5bb0bd8c275a13d0315057bd3660c510d55", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutePlanner"),
    ]),
    Module("TomTomSDKNavigation", sha: "4c1a3117d0a7266a68aaabaa1d019ff6f408897d606f777d316dea86127b9f48", version: "0.31.0", dependencies: [
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
    Module("TomTomSDKNavigationUI", sha: "cf0c6db94cc2b081681862550a17b11c3ebe5fdca1c08f1eb85fe2fb3567bdd3", version: "0.31.0", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "d30e5faa042c6a75f4777d2d17952eb1d8f8d67a2f9ebee627717eb9259e22b6", version: "0.31.0"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "08a01749cc6af622854d6ace484d0bd8ed13f5e0214a6f27d3ecd3b9e691be83", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKTextToSpeech", sha: "d0a6fa19edb9a97de053a326c2c0b549b54413e221f90673f0ef4c992743e81c", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "30f6d20f2a3d8a6f589bc22516a131c00777a200d068c42c43d4e94bb52ccd24", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependency
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDataManagement", sha: "6b7c01d8a9752df1f4ae014815d339629b4d2b59695fb8188c4951286d60467b", version: "0.31.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "15d54d3b848edb4a899f731080daa6d3fe6833634c3acdddbb0b62d2148ae4f9", version: "0.31.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "df04b4e422108fcaf5560c4da519d0e79d929cdbbba8b639f3afb698eccfa3f1", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "7c1880adf6f1963a34448471da05278795ac0655e6c70c4467127dfadf8ff30d", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKRouteReplannerInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
    ]),
    Module("TomTomSDKNavigationVisualization", sha: "6527f6eb10ab796ca0d01276890d89a7e2add3a0f53fce8069814f2b65d06f62", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutingVisualization"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "89106bb44fb6d21821aaacfc16359346f141f23a7f4666529686a7ac8fe6573f", version: "0.31.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "7db192fa6057230a4d503b460dd6932c5c85e3a9321a86e82ee7e94e2ea8d1ff", version: "0.31.0"),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "d7f479aa49cfed11fae3c6987e345d06d1028d14edac1ba18b1b58c60c64ca15", version: "0.31.0"),
    Module("TomTomSDKNavigationTileStore", sha: "da5b08e513385f6e3bf3925ddf42ccedfeaac74228c5fc5663c33f0c1be52f01", version: "0.31.0", dependencies: [
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
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "cb10afec6f8af9c809420c930f3cf733bc391bf9fa5d4cf838768b6a48bf8c73", version: "0.31.0"),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "bba832100402fe61a1e20e7c706ae51ac92262e80566087c4d875b9c91ddfb73", version: "0.31.0"),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "dddabefe7fe2cfcbe09df0d3dfee17c42e7f8df51f6ab23cb40656d43e7b5912", version: "0.31.0"),
    Module("TomTomSDKBindingNDSLiveTileStoreAccessInternal", sha: "414ef9b5e1ec5792db99c7e24dcf4f66b5e66f5d296d16d8d586e089a6d621bd", version: "0.31.0"),
    Module("TomTomSDKBindingNavigationTilingInternal", sha: "d1621b9a32fe5bc923f20a0c9fc57800a685a21eca8b2729ec37cbe3ca84b1e9", version: "0.31.0"),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "4c5423c4e6fabd4ce3884d859c25316512da090ca8b7fae17a75cdec95b7a1e2", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineCommon"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKRouteProjectionEngineCommon", sha: "776209d317d4619aeaa9dccbf9c5a65b90d5d8f785e2f92e6ea96cecf5edd4a0", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "7ab2c08e60816b8bf1f8cc8d6f63d467f394123a45fed4bb2f28bee5addaa2ef", version: "0.31.0"),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "8ad843cab35a997f5942173a83498a43cca7d01b6c348189b7e7b70097197c71", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingMapMatchingInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "f8a6f53e5ade9c22e815c96301204300ff25ea30c5d8479d969dbef528a324c3", version: "0.31.0", dependencies: [
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
    Module("TomTomSDKLocationContextProviderEngineTileStore", sha: "14b61030aed0fe13c63219ca4cec6ac8433bf9f2e2995dedf97d96ee2546b61c", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingLocationContextProviderInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKNavigationHorizonDataAdapter", sha: "11d8366742690ddb66f07fedad39bc78833f8060d28661eb4d507677a3f71351", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSafetyCameras", sha: "b04ad9b2810f8f7530d330a9eb7f82f363aeb24827dd0f7bbcfddae131dfd2a5", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKMQTT"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSafetyLocationsDataAdapterOnline", sha: "c66603b9441e02829b99d199803bcdb157bba971123a096d611f2aa650e2a313", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKSafetyCameras"),
        .navigationPackageModule("TomTomSDKMQTT"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKMQTT", sha: "4480e2100013a2cc03856edcaee73cbbf9eea79df9232c42b4f911f89da27c6a", version: "0.31.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazards", sha: "1952123331c654c076a81e72ee959c92be9c25d75a811edcd83be88b5df0cf73", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKMQTT"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazardsDataAdapterOnline", sha: "b255f19e7739daa2d885f61de9af25abd7808dac79605b6850a4e63f66cc3589", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKHazards"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationTracesRecorder", sha: "78cb67521446a0780b5ac5b65ba3c358a58cb59e33aea40319ef9a704fcb2044", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKNavigationOffRoad", sha: "39052031b1fd27b897615b7304c7bafbb95b44dad860376b7d67bcebb889ac7f", version: "0.31.0", dependencies: [
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
    Module("TomTomSDKDataStoreMaintenanceEngine", sha: "34eea8e10bb550dfd1ee64757f8a63a2a79eb00cc6a373eb8d1270f6c6607894", version: "0.31.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKDataManagement"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonTileStoreMapInternal", sha: "147f18986b90fe25b6b14acb336a2c33d356cd7db6cc918b2ed29268900177bb", version: "0.31.0"),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "be7a9dce3f60d78f57ea9e6c1e61731ff2b53172fcfcd29b7ddd18647e40a679", version: "0.31.0"),
    Module("TomTomSDKHorizonEngineCommon", sha: "b95c80b2572b54982b8ce93a84b1899c0dd9c17407b8b8d77b624724a97ce24a", version: "0.31.0", dependencies: [
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
    Module("TomTomSDKHorizonEngineTileStore", sha: "6d9a537115d8923e380837425c7ad6ab5417ba114f23cec4df87750447e9d940", version: "0.31.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoute"),
        // navigation package dependency
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKHorizonEngineCommon"),
        .navigationPackageModule("TomTomSDKBindingVehicleHorizonTileStoreMapInternal"),
        .navigationPackageModule("TomTomSDKBindingVehicleHorizonInternal"),
    ]),
    Module("TomTomSDKNavigationOnline", sha: "49d7e8c1e97ad8b35aae30568d62f66c0f4b5f9c652c493b31132ed096de77c1", version: "0.31.0", dependencies: [
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
    Module("TomTomSDKBindingOpenLRInternal", sha: "3f6eb7d583f3dc6308bd290149e247c5b11f4b2944a237c7e83b51c16cb34a00", version: "0.31.0"),
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
