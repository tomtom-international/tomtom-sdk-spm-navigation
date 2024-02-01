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

let sdkVersion = "0.38.1"

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
    Module("TomTomSDKNavigationEngines", sha: "cff695fdd70a26c36aa8da68df61755289cb6eaf15be4a2cd00fba7367e7bca4", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutePlanner"),
    ]),
    Module("TomTomSDKNavigation", sha: "948db9ae9cc797c42fc624a4cae3ed8f4254644ac134292b9f21e247e3cc4f6f", version: "0.38.1", dependencies: [
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
    Module("TomTomSDKNavigationUI", sha: "b92c202ec4b9ebf6c559f7471f18d07d551481b788617bd4db72d87f4962429a", version: "0.38.1", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "d7dd73a2ad76da9417eaeb9c87bd6e95490d24f78d33731d7316ca12d31c152b", version: "0.38.1"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "34e8c9cc07c735d8efe8ca7d69085798e52b0183b30b65d1ecf6fca7cc08f4c2", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKTextToSpeech", sha: "b50e83884a2ccf7cebea6dd122a3629a0c31c004abc73fdcd04202e1cd52c080", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "221bbe11661261bb3e335886ed268e97d41b973338dc961945ae5969d111c8ac", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependency
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDataManagement", sha: "3350da79852efd25c53d5d24d3300031bb3585c936e1bf48a85fc0b6e52068ee", version: "0.38.1", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKUnifiedLocationDecoder", sha: "bb98dcba4fbed9a6780a35227c0a9ca66e9e5bbf6ce6cbbd5f5fe2955ed68bfc", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKBindingOpenLRProjectionInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "2b66c893fe115cdad91fa4e0c588178bb01581ea94bbe9b7d5c2530bb5184235", version: "0.38.1", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "36dfa4d61cb1aac39c39f73218041e0ecf3ed17ecd44bb7af6236b79b9fbcb84", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "b2874513bf46c93d02906a6a74d9c4a9c1f589a502f593816c4d4803213f3156", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKRouteReplannerInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
    ]),
    Module("TomTomSDKNavigationVisualization", sha: "3e8527a153dc1519f41ae95304c219899e6963b4daf6d662cef596a9ba225fa4", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutingVisualization"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "60b82569bedf9607b5bb30dff437a8964c6998c6966e8494a5b0b9407424a59c", version: "0.38.1", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "8f22ff62e98c5173e665090117c6ae9e8daebaf2631ad3085970f9f095f20df1", version: "0.38.1"),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "e4a55de3b128eb29267d2f960278090223e174381e468930da5e0ea62619f75e", version: "0.38.1"),
    Module("TomTomSDKNavigationTileStore", sha: "cd734564930a603b5e14f10982af71023b9f62bd2d81764550b10a91e41f1373", version: "0.38.1", dependencies: [
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
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "903f725d8f1615f97fa4cef0401cf3099b2778aad7fb7bcc33511e8a0c52b2e5", version: "0.38.1"),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "612ea8bed6e98ffa18886367410ab25fdcfe3ccd25b2b9d3c4e28f0551bb6113", version: "0.38.1"),
    Module("TomTomSDKBindingOpenLRProjectionInternal", sha: "c3473bd1420330132a7f3f0dd3fe7012baefce03563de4083bdb72d3dc68101c", version: "0.38.1"),
    Module("TomTomSDKBindingNDSLiveTileStoreAccessInternal", sha: "28a404a41766573d032b79b0a536eacc92f6e2ba938f7e9de29e1ced26ae4a6e", version: "0.38.1"),
    Module("TomTomSDKBindingNavigationTilingInternal", sha: "cb8e293e4dd6e62092183f0b93c6bb75c7aceef1348bc3ad3937cd43acc31265", version: "0.38.1"),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "50a9de708c8202a7e9ef961c3e57347271aa81212698ece9c244518849cc0e12", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineCommon"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKRouteProjectionEngineCommon", sha: "baa62269d501c7753ed8f172edd9bf759ddc99f19c44cea2862d7858e2bdf1bb", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "afa8ff4c087ea411bb6a662ed4e676732833c93d79784562bf66671089e05702", version: "0.38.1"),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "ed7f98ec55651702d842b41175f74c3fdcaeaa610d2e7e9095e67412b5462c5b", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKBindingMapMatchingInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "7b7047de50cf19051b7836c99323300c293392e42034c49cf4f311a4048d4c69", version: "0.38.1", dependencies: [
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
    Module("TomTomSDKNavigationHorizonDataAdapter", sha: "47b082386ba4e0ba016ca4f803faab10a092febda4a05e954120bf3f1e201bb8", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSafetyCameras", sha: "8051363970d3e26f8a79ee39dc8b4b0f33d7fc8b598b965c6b10914069aff21b", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKMQTT"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSafetyLocationsDataAdapterOnline", sha: "d16524be186ab68660070b7c9ea03db0e144f9352761be0f4fb3fa74472e3c86", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKSafetyCameras"),
        .navigationPackageModule("TomTomSDKMQTT"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKMQTT", sha: "7db271a9cb623e3fcf80c1844d500d3791ade37ca8689750b7e5d4e6c9e7247d", version: "0.38.1", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazards", sha: "1e4db74fcbba670139518c1c8b79be9c2a3514027aa75f6800dca11fdc9708ba", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKMQTT"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazardsDataAdapterOnline", sha: "1809a9b5b270f9498717c5b4d44a96a18f0aff4b4777a87293906afa484becd7", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKHazards"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationTracesRecorder", sha: "cede52af543fbe358d24f2db21ebd8f5fe94f5147717ce820729286b74bcb46e", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKNavigationOffRoad", sha: "8c5b62c78cd477bfce716a3ece99c529cb3967fa10c658ce6a92df106da20366", version: "0.38.1", dependencies: [
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
    Module("TomTomSDKDataStoreMaintenanceEngine", sha: "6a273795145451ffe41ec9bfff89e5103e872005f455bc3cdf313b7996ad6cf9", version: "0.38.1", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKDataManagement"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonTileStoreMapInternal", sha: "43fea61775184f184a0b8b285437a2cb7d768cd842606e060f1adf7a44f4a37c", version: "0.38.1"),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "4adfe828ec33f898a0755f2137ee5296315fb5307158251f5e38b5fa60f9e9d7", version: "0.38.1", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHorizonEngineCommon", sha: "201012aa9209855b887cca02021865efdd4b145a38f92e2929ccad8fae5344c0", version: "0.38.1", dependencies: [
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
    Module("TomTomSDKHorizonEngineTileStore", sha: "31ccea51b87554df5107d55d964667e7aee19e374a4b48a1cea477991700d8ad", version: "0.38.1", dependencies: [
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
        .navigationPackageModule("TomTomSDKBindingOpenLRProjectionInternal"),
    ]),
    Module("TomTomSDKNavigationOnline", sha: "c3ca11d9436ef0b7a88c2e39833237eb0f598856e5d7958b98df238144a7ea1c", version: "0.38.1", dependencies: [
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
    Module("TomTomSDKBindingOpenLRInternal", sha: "3c08bff050ec852b8a0c530c6e28695fa9e7a639ca4cb9723581e844c6064418", version: "0.38.1"),
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
