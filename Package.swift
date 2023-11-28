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

let sdkVersion = "0.34.2"

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
    Module("TomTomSDKNavigationEngines", sha: "c86ef475e59b180fbcfaae27baa1b1d7472430e7ba9fe1c614a0ffbd7f650bca", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutePlanner"),
    ]),
    Module("TomTomSDKNavigation", sha: "4f89cbc14a0ff783ff160fed17cc30c855e034410f34148319a9659f696e3e63", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKRouteReplannerInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTextGenerationInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKVehicle"),
    ]),
    Module("TomTomSDKNavigationUI", sha: "7f17f7aca9160004850d1e9ffd2de027f954e794cf21b7921b33578918ff86d8", version: "0.34.2", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "bdc894e287334d0467dd55cc5d13424a367b812823581819ba1474e5dec80c0c", version: "0.34.2"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "a6a3e558274af55e88a12f21a54facc046fa6241173ee3a646007c9f84d400fd", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKTextToSpeech", sha: "2cc5163d6ddf03db4d0f8d7b4afa0ac9a6ca8fda62182172d3a90f62f4878407", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "cccf2bb8a41f7602d68ad870cf92b0c0a60905d519bb3578dc4283a944a90c5d", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependency
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDataManagement", sha: "efbd4e29cdd23d20aa82eec9ad644b73ff6bc427467bdbb5a723ef7dbd1e420b", version: "0.34.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKUnifiedLocationDecoder", sha: "e045283a9ffdbc83bee581eba920fe76daae413e37f828541afe559464f43f13", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKBindingOpenLRProjectionInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "196ee315e3d15e9ca3b50070c9f9e715719d96e7b3a736cc25b7e2283ef65184", version: "0.34.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "58f9e29ac71e7feee364cd13a81cc7bf9b678a504f1263c02eef80d8dd4ecd1a", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "f6cb20f78e1c90fb4d36ab47b7055e0e840ec95e750013f9fd9abdb8423c248c", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKRouteReplannerInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
    ]),
    Module("TomTomSDKNavigationVisualization", sha: "137ec766ca05854145f3dd0a8c0bc82a7c40621259ab9bda298982184f35e4cb", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutingVisualization"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "851f84bc4be784c5fd4d24b1439738791548e1cb4856065836fb9fd22986a350", version: "0.34.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "bb0d128413d280dad0d9e4e0263f18b82949818fb874599d025c1ffaa310cf1a", version: "0.34.2"),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "406f95006907784609efc04c3cac2516c1ba340654ebef9d03958a63d52c3aa2", version: "0.34.2"),
    Module("TomTomSDKNavigationTileStore", sha: "0c14181ace5d74d9e419f5e34dfcb2a27fc317b41b9285613e8c8b43891e148f", version: "0.34.2", dependencies: [
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
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "49c101d842b925a80429c7f58dad60a9d2a102598fdf85b4d0e3ea25a8f4528e", version: "0.34.2"),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "b20955634cb3d6cd58651c3d88f48d502d5450cf9b3527365e286ca77ceb1c53", version: "0.34.2"),
    Module("TomTomSDKBindingOpenLRProjectionInternal", sha: "a26488291693e90cf2e4ca707a36b2ba350c492b62653e60d72dc337cd181ff3", version: "0.34.2"),
    Module("TomTomSDKBindingNDSLiveTileStoreAccessInternal", sha: "a1a686f2d0b5c3d1603d2ec07aea69aa80522039b28ae57b4ee404f8914b4a8a", version: "0.34.2"),
    Module("TomTomSDKBindingNavigationTilingInternal", sha: "4e60e42159450dbe8fcf277878a985fac006b7f81c72504d12a1c8e4e4b6aebb", version: "0.34.2"),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "17697ddb89dae1b1fcf081bc61f9aac9e0bb8943068c68cb3886a2ce379ef32a", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineCommon"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKRouteProjectionEngineCommon", sha: "ba08b1fd99cc7cca8eee9f4d14e05e61cc289953e16ca3e24fc212928ccd6339", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "326b298dd51e1bb66a3af8e64e50e9b66519bf6014ae99542796f2159fa9a6e5", version: "0.34.2"),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "23c945b727316aa836ec693131603abf6e33d93238d5df6fd4e117954f4cb247", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKBindingMapMatchingInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "424c502ca230c1ff6cdf251bb5ed0785a144a5ac06dd546be7f0635e3146484e", version: "0.34.2", dependencies: [
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
    Module("TomTomSDKNavigationHorizonDataAdapter", sha: "af55ad40d8a42f8e78340ec3000724830063f8b9a41dbf9fb820a9024749b0f9", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSafetyCameras", sha: "d80aa040b31f756ee511d7f4eac58d6cca2ecaebe44d5782a822e58a10035ae6", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKMQTT"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSafetyLocationsDataAdapterOnline", sha: "8b61df16c09478bb975c0771cba2b8b8d07582d3bda67901facec2a8a76e5eb7", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKSafetyCameras"),
        .navigationPackageModule("TomTomSDKMQTT"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKMQTT", sha: "b153969ec0ccd630f3751bb11a8bb07d8de3d589282a9e91b47cbfd82b2cc994", version: "0.34.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazards", sha: "b0259cbee0d88df79323486112318dad63b4d3ed63049a565e1eb5ed827d2a14", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKMQTT"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazardsDataAdapterOnline", sha: "8d1f979ed581874159c3b0bfd5d1b3845272080b8141dac701a05a405759a61e", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKHazards"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationTracesRecorder", sha: "cde0455676a0578a282a07925786dbb8fb274d213068c096975a46a405c3ebb5", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKNavigationOffRoad", sha: "713365ac1c523bee338913368114beea91b2c4590611b133df4f0e1bcc55727d", version: "0.34.2", dependencies: [
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
    Module("TomTomSDKDataStoreMaintenanceEngine", sha: "c1d8d3a4f2a24389724c0914fca9fb200231bc8337e6a65eb444b887165f307e", version: "0.34.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKDataManagement"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonTileStoreMapInternal", sha: "eb5d50ed2ef1f57cbe5d66bc7b36483bc870f0c142c459926b9e92c7442cb9df", version: "0.34.2"),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "9aeea6a14c750fe54eb9802678dde3663bf63cdd89b06f559732e24e5ae6dd55", version: "0.34.2"),
    Module("TomTomSDKHorizonEngineCommon", sha: "ffc37ddbc19602dd05acc67d34a16f566a9e2ca1dbf9b6251ba465cf64416e4f", version: "0.34.2", dependencies: [
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
    Module("TomTomSDKHorizonEngineTileStore", sha: "23ff8d0f20fe91b7038d41ac5dfbc18b14286b651b08234d4014baf7b3b090ec", version: "0.34.2", dependencies: [
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
    Module("TomTomSDKNavigationOnline", sha: "f5d52002a53f579de79619ca8a6deb05c10d505403e21e69df823ffb59ab7b4a", version: "0.34.2", dependencies: [
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
    Module("TomTomSDKBindingOpenLRInternal", sha: "0856fb54e7f52819c7669df0c1b7bb4211d3510bdc45db876838d56fb52d0b55", version: "0.34.2"),
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
