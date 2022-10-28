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

let sdkVersion = "0.2.2581"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "3bfe3ca685a346cff954247bfb50bc20a1a2b0676124e169414c2445eb0fd51c", version: "0.2.2581", dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKNavigationClientInternal",
        "TomTomSDKNavigationServiceInternal",
        "TomTomSDKNavigationPositioningInternal",
        "TomTomSDKNavigationMapMatcherPredictionInternal",
        "TomTomSDKNavigationDrivingAssistanceClientInternal",
        "TomTomSDKNavigationTextGenerationInternal",
        "TomTomSDKDynamicRoutingApi",

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
    Module("TomTomSDKNavigationView", sha: "a3b2b41419e089e8026be780489219a1ba944fea08353e4540fc4a67dc036396", version: "0.2.2581", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "7d12f7ae9ab0a7cd7b94992a4c68a93e43bc55d88154c816a800258f694b5ff7", version: "0.2.2581"),
    Module("TomTomSDKSystemTextToSpeechEngine", sha: "23f2a5689399eda980a1a35a66b4f0ac5ec36f4e72e2262101c1df645655bd6f", version: "0.2.2581", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "e2ffd674d59fd1cc98c22343999e84cdfad88a8e8740f590e9c0dfeaeda4ad3e", version: "0.2.2581", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDynamicRoutingApi", sha: "b2c1e1d56def6a81f0443bf478a16cc0ef03afc9728570287e058ae8ca4f1ef3", version: "0.2.2581", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKInternalDynamicRoutingApi", sha: "b7743e0a023d6b5ce33ac5eb7c626a13aec4b35ff4275f3aae99fb56aa629423", version: "0.2.2581", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKOnlineDynamicRoutingApi", sha: "a12bbdc0949ca7301a2d2b3278c7718b838bd0db7d58eaefba3715874ab83123", version: "0.2.2581", dependencies: [
        "TomTomSDKDynamicRoutingApi",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKNavigationVisualizationAddon", sha: "2fe8cc5a4f9ceb868e3a0b1697da5b1dd11022f87770a13f753805a802b5f0f4", version: "0.2.2581", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapsDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRangeVisualizationAddon", sha: "c133a18619f3c4f4b497fcfba4aee22920396eca8792951363fa85a6870d58f1", version: "0.2.2581", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKMapsDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKFrameworkClientCommonInternal", sha: "d5150caabc144213e708ddff9bfe404730161dc9cc44b3a05134937843da83e4", version: "20.7.0", isProduct: false),
    Module("TomTomSDKNavigationDrivingAssistanceClientInternal", sha: "f0d86ed9a24bf8f0e2db1d94343da20d72e61c76f1ad548b2989ae98d0b65bae", version: "20.7.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKFrameworkMemChannelInternal", sha: "04fdcad61f59b7432de83459a7b8dd2c798ae7e9a5f387b1a7d80c9df130f8ee", version: "20.7.0", isProduct: false),
    Module("TomTomSDKNavigationClientInternal", sha: "eb2c4d063e68d929e509738872a8ba99436577e4437ee5e6de3a16f88f35fec2", version: "20.7.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKFrameworkSecurityInternal", sha: "c5f2bd8fadcf4c15534be0070e975314e8786d911683087bee7c96538b251db2", version: "20.7.0", isProduct: false),
    Module("TomTomSDKNavigationServiceInternal", sha: "602b679436ccbf14f6ae7e383edb6b828de7054cb931d331f002b6cb7d4864cd", version: "20.7.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKNavigationPositioningInternal", sha: "c0c9de13effa27342ed7995165eac56f39b02c5fa8c6ce94dece66e86d60a093", version: "20.7.0", isProduct: false),
    Module("TomTomSDKNavigationMapMatcherPredictionInternal", sha: "80e5b4d12207bb919020f112e4e4841d9af8549c112ba04436137feb209985d8", version: "20.7.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKNavigationTextGenerationInternal", sha: "2c3d60ca9d86988db0a67057f517fb4ca4b0d650b0bf7ff3f87ecce46a071ce9", version: "20.7.0", isProduct: false),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "3491a7c6ad3b0a5e6a83e06ce60717a29a98cf6779a20f93222197f6ed46ac5c", version: "0.2.2581", isProduct: false),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "1b1be12c029a784a4f31f1400d3423d53314e07ced52c0efa07fe799dbfe9717", version: "0.2.2581", isProduct: false),
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
