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

let sdkVersion = "0.37.0"

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
    Module("TomTomSDKNavigationEngines", sha: "1b9d199d2535e22256cf59eaab1ad7780f721242dbc62141864e5177e6311cb5", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutePlanner"),
    ]),
    Module("TomTomSDKNavigation", sha: "c86121440e9e3963b4d25b703902c99108db681e774cdbcaa27b4499ae02708b", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKRouteReplannerInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTextGenerationInternal"),
        .navigationPackageModule("TomTomSDKMapMatchingEngineCommon"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKVehicle"),
    ]),
    Module("TomTomSDKNavigationUI", sha: "64146110e3605e086034c564780f86b0621d07a2ade0557c131b017f3398a2e6", version: "0.37.0", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "e058909419cbca747513ff21f4af914520b0fb18984c2bb19702b6941fe80b20", version: "0.37.0"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "6586903525a1dc0b0ccb8ea0f95cfe415ee3f4a7dd4e260d9eed8da3353b363b", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKTextToSpeech", sha: "47cf2ccaeb83f2e342fbc0de831f50416582525925a85602d9df8a03d632e344", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "774ec2d7061001c293a5968f334c42d83f64ccfc075f4c36604b61edda5046b7", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependency
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDataManagement", sha: "f3afd87fbcd8e7a9f930ee1d68f2ac90363cd937d28b381e83d88426693c80b6", version: "0.37.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKUnifiedLocationDecoder", sha: "5dd35969072b5cb4ac687d6b1235b80a883311e342ecf3e3f8e4a2f0033a7d91", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingOpenLRProjectionInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "50f22a7c378cc4964a977ebd11c83285072211dff18e0648b88e41c7cef6573a", version: "0.37.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "dfed31b291f4f387457a2587d76138f5527451fdd740cf227d3a1d3310c9b297", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "9ecf8b182d4c168d813cab31dec5b250d285a86b01a52f2c4f64a055d25e9da0", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKRouteReplannerInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
    ]),
    Module("TomTomSDKNavigationVisualization", sha: "e555f0a4c356992b06a224efe96d3552d208f63d559933f65d7be2952b03459b", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutingVisualization"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "d1273f94a15f93159fe74f0d182340125be0f4ac2398499f2475a8fe1f7a02a0", version: "0.37.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "70484791cc180d48ef66db73b34f45668c2a1b9fc51c302b2ea9410ad403a434", version: "0.37.0"),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "e9e7d27aac84d688568f110073c478b57c1b40d90116c8a6eee2b35b5562d7bd", version: "0.37.0"),
    Module("TomTomSDKNavigationTileStore", sha: "0886e7bec241d387b93ab95cd4d88645b2d081ea1be3873186ef6bf5c43e98b0", version: "0.37.0", dependencies: [
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
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "b3b6aaff41ad048745fc97df7f351df057cc5a0ed8bbae2402f167a3a6ef263b", version: "0.37.0"),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "9408fdfd4f47cb1a7d26d8469d94218abf7ae61b87f079dff180b4f97df72786", version: "0.37.0"),
    Module("TomTomSDKBindingOpenLRProjectionInternal", sha: "d04e8e8cd269ec9e4f2329213e40af34e2892e59bea4e288107eb7862228f4fa", version: "0.37.0"),
    Module("TomTomSDKBindingNDSLiveTileStoreAccessInternal", sha: "a2f58691c4dec6568d837ef199facf250721c8b239184d802199f957bcf7aaee", version: "0.37.0"),
    Module("TomTomSDKBindingNavigationTilingInternal", sha: "84ec016fdbeb9a06f0c3f15574d1fe5bc41fdc7545acb73e120a2844431fb6c1", version: "0.37.0"),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "dc3c69b1fdacbef04572943e0c5982226287483790303d25c1979b2e29c9c18d", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineCommon"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKRouteProjectionEngineCommon", sha: "c02384d535c50d04a493f03c634328da36ebf21ae64ee6bc754ff14865c36c26", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "b9a8eedccc52459282c0c4e9fd7b386c5d7868a67a0592a962db2e87dfca7990", version: "0.37.0"),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "138e5d93cc3a0826af6e01630aaff124e3ff7d5d1b5b326e63f9c4f3b4499f23", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKBindingMapMatchingInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "009126f3da37f29d34befa9283d2481765edfce4861bf6dbd1c5c0708696bbe9", version: "0.37.0", dependencies: [
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
    Module("TomTomSDKNavigationHorizonDataAdapter", sha: "3737174751e2cdac540e9d5942816dae0dd98de9b817e88ecbdfab06e4de2344", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSafetyCameras", sha: "392acc197b1712fc07f6c283ed99c8509c376c0b86efbf5618ca0cd81fe736f4", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKMQTT"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSafetyLocationsDataAdapterOnline", sha: "7e081daf8387a3434461dd88e6716b02cf156c87b012f18b355918474d57dab0", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKSafetyCameras"),
        .navigationPackageModule("TomTomSDKMQTT"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKMQTT", sha: "d2629d1caf20d7a7f7ecc7d71ec1b76608401c5f34c815d01709a06b79594a09", version: "0.37.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazards", sha: "7f66b734e862438220967dfc514063765b42cc835dd07c771f160554a3d23a88", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKMQTT"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazardsDataAdapterOnline", sha: "b2552e7cae4aae7734b79a14108b6edf130012d1d1ea6d3e90aca73d2245c7d7", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKHazards"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationTracesRecorder", sha: "06af2cc3ce99ecb70b32a6c97e9d9c47947bd72c7f84bff839c7bc7aa54cd8f4", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKNavigationOffRoad", sha: "bcd0a496fa27ff4a1f42c8aaaa1b5c0e7ea630c944fa8f154323995388cc0967", version: "0.37.0", dependencies: [
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
    Module("TomTomSDKDataStoreMaintenanceEngine", sha: "9a9a7734f2324e1662b4c7786e2dfd34595c7c40de7fbca58e1cad84144c41f8", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKDataManagement"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonTileStoreMapInternal", sha: "b320a678762408f928663a1e819dc398fde33125b503d9ed7dad7d2808d2f21c", version: "0.37.0"),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "e668ac690eff77261c9934f772acb885c65fe99469f8fa0c3deeafdbeea9fd9f", version: "0.37.0"),
    Module("TomTomSDKHorizonEngineCommon", sha: "12551cbff247b6359dbfe7b7451d93999cd4fe5f8139160ff57a0c23baacf9d7", version: "0.37.0", dependencies: [
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
    Module("TomTomSDKHorizonEngineTileStore", sha: "d225ae8a0b2f0fe2160e135a717d83bab1d579b25dbc0b6c35ad93801032cb06", version: "0.37.0", dependencies: [
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
    Module("TomTomSDKNavigationOnline", sha: "63db55cbef1f7bc82d6dc2f245804102cab31e23924d5311f79267ab29e807a2", version: "0.37.0", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKDataStoreMaintenanceEngine"),
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKMapMatchingEngineTileStore"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineTileStore"),
        .navigationPackageModule("TomTomSDKHorizonEngineTileStore"),
        // core package dependencies
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKVehicle"),
    ]),
    Module("TomTomSDKBindingOpenLRInternal", sha: "8841b0f2d1ba2fb0c54345dc8bfc054ab239eff29f3daceae91e03c72465983e", version: "0.37.0"),
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
