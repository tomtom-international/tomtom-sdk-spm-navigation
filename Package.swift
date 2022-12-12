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

let sdkVersion = "0.2.2929"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "572faa67fb307d207af649a25eff75f3fad87d32b6ef254233cc79dc32e38635", version: "0.2.2929", dependencies: [
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
    Module("TomTomSDKNavigationUI", sha: "1dc85458885a5c5993834fe81caeb1fb8ba17e199f5d17852a293f2cc09b1c0e", version: "0.2.2929", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "13dd001a5d61d60465bd1bf20a1ce9b38ced1ddd542a4ccae34b8ee9fa3ba85e", version: "0.2.2929"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "8356cd3321f6a843dad491c547d8922f12f74a45cc2c2c491ccd577799b87b6f", version: "0.2.2929", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "9c2fd272a57b9f3e0a60f9fef59b23bfa04511bfa7d52b7ae1153a2f70f44bad", version: "0.2.2929", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "4bbf6f28ca7428ddbf1ad8651b12a58b4376c74f893000326c4d97376db3a799", version: "0.2.2929", dependencies: [
        "TomTomSDKDataManagement",
        "TomTomSDKNavigationEngine",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKDataManagement", sha: "7cb3f2f6664aa343f0c9ee7816ab94eb69e7a427cccd37f3077e1215f616c09d", version: "0.2.2929", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "f672569fd29d808cf6a1cbc7ab5263f35f64d73623dd11ff12c55cd4da0ffa5a", version: "0.2.2929", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "b537916d4d591a310d1ac315384e072a14c1538a7105fe097de8c856d996da3f", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKRouteReplanner",
        // core package dependencies
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "e0c1c0540571fb156c3347319c3b528b753747a3ebcc450dddeab5e5f909b51d", version: "0.2.2929", dependencies: [
        "TomTomSDKRouteReplanner",
        "TomTomSDKRouteReplannerInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonNavigationVisualization", sha: "fe54b12db95758d6f99ff3d00d70fbcd85b4b7d54b402895150a436174aa997a", version: "0.2.2929", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "434b98684f0ab438de28e1458d41847397e335551ed9de7e550ea90e180f16de", version: "0.2.2929", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingFrameworkClientCommonInternal", sha: "bd19ed2abd3050166040103377c803c9ccbd6b598e672aa552630727ded58420", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKBindingNavigationDrivingAssistanceClientInternal", sha: "dd4e9c1d2482cc63250915f2991c26d63031c2b8dc5e56165f8752e7b8ac07ba", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingFrameworkMemChannelInternal", sha: "179a85c4069c59cc057f4ca74d4fdd1c469c6ccf52a9eb986951ef7013646943", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKBindingNavigationClientInternal", sha: "52bda1ad37eda348dee0924d209518601cadb125575ebd9aa3b2d3737dfde172", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
        "TomTomSDKBindingFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "04b2df884847ae7545a3de7bf073941d1deebf5bd01cf53d1427842c7612ee40", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKBindingNavigationServiceInternal", sha: "77928c170dc9a35f2c139327e74dd1b730dcfe5cd8833ae3b6b335cae8e8d01b", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKBindingNavigationPositioningInternal", sha: "5aca787659237bf24488ac45585c330d3f128cf7edfa91ddca1aa6938e580caf", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKBindingNavigationMapMatcherPredictionInternal", sha: "30f95173bf0a844a8eb7754715704d8e8f5a2292550d96ad2350431b2121a1fb", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "8f42987b0b35586ddff21887872cce19d8544b79b3750e164fa74373cb54599e", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKNavigationTileStore", sha: "13d3a3c920fd9709cb5b403fff5eeb34cc80cf5d2709f5ad1c206d8e3ea622db", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKDataManagement",
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKBindingFrameworkSecurityInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "ab5c95a834fd473bb9a454cf0d6a48e13db9d265f6f483510fe7787ca7aa3b91", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "38028ef95206e7762adb8ebc3cd6160b03a669a42dbef9f204207a362ea41a7a", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "2e9c25266eaba3c5c04db90fdda0c863b486874580e88d52b16e25f7699145d4", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "a820edac68bd05632e66ca39ad7ea55b92366cd03ea5ed7b6ebace4909cd125c", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        "TomTomSDKBindingRouteProjectionInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKNavigationEngine",
        "TomTomSDKNavigationTileStore",
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "20fc1d9ff142c0a768b39b5a0a0387fc3fa473b4b46593b0f337aed1e5ce889a", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "e5415018ffbbfe8f51f485ecb72c204a61b4a1193b3c9aa99433fd1a4a00e113", version: "0.2.2929", isProduct: false, dependencies: [
        "TomTomSDKBindingMapMatchingInternal",
        "TomTomSDKDataManagement",
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "2029879f41e8f96b7f115a5b992e2e8b6a7b821a7b3b0009e1a07d880454038b", version: "0.2.2929", isProduct: false, dependencies: [
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
    Module("TomTomSDKLocationContextProviderEngineTileStore", sha: "efb542512098484b3876a5cb1bd9e0beb5eaeadae9533559bece67b43373bf51", version: "0.2.2929", isProduct: false, dependencies: [
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
