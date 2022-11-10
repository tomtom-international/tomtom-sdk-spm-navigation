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

let sdkVersion = "0.2.2702"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "225472076fca2da65d4c4d1036767459fa51dbea58f7125338933756c772e2db", version: "0.2.2702", dependencies: [
        "TomTomSDKBindingNavigationTextGenerationInternal",
        "TomTomSDKDynamicRoutingApi",
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKInternalDynamicRoutingApi",
        "TomTomSDKNavigationClientInternal",
        "TomTomSDKNavigationServiceInternal",
        "TomTomSDKNavigationPositioningInternal",
        "TomTomSDKNavigationMapMatcherPredictionInternal",
        "TomTomSDKNavigationDrivingAssistanceClientInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFrameworkLoggingInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFrameworkHTTPInternal", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKNavigationView", sha: "ebb1ea3a995056b553fd0a2f75019e565ba4c5dd392552dae6a1c00e80f8e3cc", version: "0.2.2702", dependencies: [
        "TomTomSDKNavigationEngine",
        "TomTomSDKTextToSpeech",
        "TomTomSDKSystemTextToSpeechEngine",
        "TomTomSDKTextToSpeechEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKUIComponents", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKTextToSpeechEngine", sha: "a11fb0f14c164813ef5dd65988bdf18c0d0a507a0a0ac2e988ed7f16f3ad17f8", version: "0.2.2702"),
    Module("TomTomSDKSystemTextToSpeechEngine", sha: "1b31d50770342539f54204cb1d95e090325cea9c020bab2b635d42f275e9b712", version: "0.2.2702", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "151f2289548e1070345c88f6f0d8a990ab3e5d8cf793bd643b02d60807c756b3", version: "0.2.2702", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDataManagement", sha: "994ba859024fd21739a39461b4b4ca7c9d993fb8c06acda81c7a0a3194d0f41b", version: "0.2.2702", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKDataStoreUpdater", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "20f1f473402c5e79cc2c1b935c200f326714a0d37ed039068aa624822ca96903", version: "0.2.2702", dependencies: [
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core"),
        // navigation package dependency
        .packageDependency("TomTomSDKNavigationEngine", package: "tomtom-sdk-spm-navigation"),
    ]),
    Module("TomTomSDKDynamicRoutingApi", sha: "d781e3ebbe585962cfb542fb9872fc5efbbe168793d46028f92697db221870d4", version: "0.2.2702", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKInternalDynamicRoutingApi", sha: "3d6b4e883d91317573022965c5e0c4bf1a5b67938b3347d92b66ee543d503de9", version: "0.2.2702", dependencies: [
        "TomTomSDKDynamicRoutingApi",

        // core package dependencies
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKOnlineDynamicRoutingApi", sha: "e128b5a9976c85df44bb62aab320742612d7a785138d218788fa9bfb71537983", version: "0.2.2702", dependencies: [
        "TomTomSDKDynamicRoutingApi",
        "TomTomSDKInternalDynamicRoutingApi",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKNavigationVisualizationAddon", sha: "e01569aa74ba0dbcf4691bd273a118eaa88e1880f5b941f1fb8623e347817628", version: "0.2.2702", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapsDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRangeVisualizationAddon", sha: "4fc07a61475ba1694d13b0a9d2b855f9e02e0747b1ac06b20c11717d29f7495b", version: "0.2.2702", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKMapsDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKFrameworkClientCommonInternal", sha: "c79f3239261e49962c65ac86ea51e396da71742e0b43c6e853bc023891444b11", version: "20.86.1", isProduct: false),
    Module("TomTomSDKNavigationDrivingAssistanceClientInternal", sha: "27a43ca3e6df19dbe1cd6c3a25e7e9d7d3d4fe4361c10c965144d320b545cba4", version: "20.86.1", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKFrameworkMemChannelInternal", sha: "747fb82ccd9d49d2d5519467e4347476d56714a01353ac55e8d9e23772a52fde", version: "20.86.1", isProduct: false),
    Module("TomTomSDKNavigationClientInternal", sha: "17619334fc20e49b4d4300cae6a108981afe3c157cca8adc62452490b36bccb6", version: "20.86.1", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKFrameworkSecurityInternal", sha: "ac2f7fbfd1c86989681ec749a700379f1d91aef00855a84a313fe5414b778d3f", version: "20.86.1", isProduct: false),
    Module("TomTomSDKNavigationServiceInternal", sha: "00a6ecf69769bf8e4e1546410fd9e1577168acdc581d7673e652324bff542542", version: "20.86.1", isProduct: false, dependencies: [
        "TomTomSDKFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKNavigationPositioningInternal", sha: "ca00b6cde8dd171c765ffb155cf0fd7675d9aa6e1e5c2cb33e680bedbc6942e0", version: "20.86.1", isProduct: false),
    Module("TomTomSDKNavigationMapMatcherPredictionInternal", sha: "bff420c83a88e487065cc0dd34b2728445d80cb6b0e9cbc4bfc1bb02da28b3f4", version: "20.86.1", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "54c267a639ba55eda1af0727eccc87a4059eaeae76c2de68b7335b8628e17be2", version: "0.2.2702", isProduct: false),
    Module("TomTomSDKNavigationTileStore", sha: "b0299b4725e839c46cbeda46225359077c4d13aece8a2f143012a0907e9f7304", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKDataStoreUpdater",
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFrameworkSecurityInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "68289a4f9549a42e1f1a146b73e7d121e5fb51c4e9758e765f6509d0365373a6", version: "0.2.2702", isProduct: false),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "9a0bfdab2cc1433b46850e08a7e11f97f10fb367881ba2aeedc8649e6a521b4a", version: "0.2.2702", isProduct: false),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "c38489295d6a6c7449ca6157c06b32d4192a739ea7b53a479f67e3c0df0714b9", version: "0.2.2702", isProduct: false),
    Module("TomTomSDKOnlineRouteProjectionEngine", sha: "e944dcc34a5ee5709d717b323898f99f25620ea2133a04f13b4c1979ada8a570", version: "0.2.2702", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        "TomTomSDKBindingRouteProjectionInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKNavigationEngine",
        "TomTomSDKNavigationTileStore",
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
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
