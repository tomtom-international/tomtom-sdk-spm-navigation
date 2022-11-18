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

let sdkVersion = "0.2.2746"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "aac108a01d07ec80a96abc795acae557c9429b741473993cfc8e60164c119b8d", version: "0.2.2746", dependencies: [
        "TomTomSDKBindingNavigationTextGenerationInternal",
        "TomTomSDKRouteReplanner",
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKRouteReplannerInternal",
        "TomTomSDKNavigationClientInternal",
        "TomTomSDKNavigationServiceInternal",
        "TomTomSDKNavigationPositioningInternal",
        "TomTomSDKNavigationMapMatcherPredictionInternal",
        "TomTomSDKNavigationDrivingAssistanceClientInternal",

        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFrameworkLoggingInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFrameworkHTTPInternal", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKNavigationUI", sha: "34752542b4ca4506c467b10b6a3395564d14e331d441ee373926b40ffc7b3330", version: "0.2.2746", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "faf4c06aa0ed0b5ec81bbaf7f163fa989bf1497f1edde58050caaf2eea095e39", version: "0.2.2746"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "91fe461a160c25aee42fb2954ffd060553a2e06bbd74585b1db1c53f737ba3a3", version: "0.2.2746", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "e85af3be188889fdacb0d6c9c88e06bb36c544aa781732c4c305e024d781ab76", version: "0.2.2746", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "b66790648ccce514790db0626601bb756d935a2b58a45e070056865cf1e409fa", version: "0.2.2746", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependency
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKLocationProvider", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKDataManagement", sha: "112212a02cfd77cb2bb6abdced827c54564e249d1f490aca9f1fbaf60d6cb64a", version: "0.2.2746", dependencies: [
        "TomTomSDKDataStoreUpdater",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "72a36e26b83b955dc24f27d0e629e557794552484fd1f3612294380f5cbe640a", version: "0.2.2746", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "7e5e4aad963552bc433db63269dbfc7351df86bec9aaab860177bbb32fca32ff", version: "0.2.2746", dependencies: [
        "TomTomSDKRouteReplanner",
        // core package dependencies
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "c66b606053f97a3d602ffd81f3839a9cdb4cc63927b9919b506efca7bd67644e", version: "0.2.2746", dependencies: [
        "TomTomSDKRouteReplanner",
        "TomTomSDKRouteReplannerInternal",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoutePlanner", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonNavigationVisualization", sha: "257650409f6ea96d59ab23824c429115bbfff800ac5821290cab836650741b28", version: "0.2.2746", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKAddonRangeVisualization", sha: "30b2249bdb35c700814c8e704f8b5cf63eedb7f1036b4f5ab22276a01f89fe21", version: "0.2.2746", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKMapDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKFrameworkClientCommonInternal", sha: "a8d4b210a46b3ca22b0da58dad635c05b1d5bf5e54911676caa645f762c37b6b", version: "22.6.0", isProduct: false),
    Module("TomTomSDKNavigationDrivingAssistanceClientInternal", sha: "3de93d85bb5b22958ceb66244ab6fec7aec12b3455097451a27b5a07d09bd97e", version: "22.6.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKFrameworkMemChannelInternal", sha: "f8e14816ae563ad2c8fa23e30062bfd8070fdccd85c10cdae429b0e6b5edcdc1", version: "22.6.0", isProduct: false),
    Module("TomTomSDKNavigationClientInternal", sha: "25d7690b9bb5e309d760411177855592c0d72af15d054f12fc21a27e558478ab", version: "22.6.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKFrameworkSecurityInternal", sha: "bcc350eabbf915e8ff089af82c904e4131bc9495522fb6a5e9dd41bcdd8de37d", version: "22.6.0", isProduct: false),
    Module("TomTomSDKNavigationServiceInternal", sha: "a7821c70df4e7350b1beda1879392d3073cc29b3e9e772aea63df85764f37254", version: "22.6.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKNavigationPositioningInternal", sha: "d4977e31180b8f9ee69f5484a4fec70114237a9fa2a7148df9ba465092b692a7", version: "22.6.0", isProduct: false),
    Module("TomTomSDKNavigationMapMatcherPredictionInternal", sha: "8afad1ce0111b31bf9f07e81daf8a9b5d11367e21c1c958c25b16994576e5a50", version: "22.6.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "542b8c50a504863db0a31b1c9eea60467cd2c3c40de7cb470a63842db3300ae9", version: "0.2.2746", isProduct: false),
    Module("TomTomSDKNavigationTileStore", sha: "c2f6e868e794aa1ea60611d76c4b167d9c661b0d6a1f487c3a595a99602e8e57", version: "0.2.2746", isProduct: false, dependencies: [
        "TomTomSDKBindingNavigationTileStoreAccessInternal",
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        "TomTomSDKDataStoreUpdater",
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKFrameworkSecurityInternal", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKNetworking", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingLocationContextProviderInternal", sha: "147186ca7e8713e430b1e9398f85d90a36e64a36a2c896107b1e4175ed130882", version: "0.2.2746", isProduct: false),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "8bef44e43f36128e9a07a48899a3621f711669140cf1afd40b977e37d16fd326", version: "0.2.2746", isProduct: false),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "f1c7e8a3a06076889487a4b11acf265370672a8d1599ecf4e81df26ad9ab9e06", version: "0.2.2746", isProduct: false),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "999683bbca559853366eed69253d5f2aebb01d58922ecb544b09e8f9df5e7f3b", version: "0.2.2746", isProduct: false, dependencies: [
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
