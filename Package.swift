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

let sdkVersion = "0.2.2481"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "6792128ebd629f5a56c28ce9bc7cbb0c6c01c209caef2a16ae89112a67cd6480", version: "0.2.2481", dependencies: [
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
    Module("TomTomSDKNavigationView", sha: "e6ad3d789fe9e96f21a6897ea0c9e2706a4a69889b21d50e1ffc9bb6a74b7256", version: "0.2.2481", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "1505ad6b4542e7a66efc9e10e2b6770cebb2b64aaeec25d6658c569829e025d0", version: "0.2.2481"),
    Module("TomTomSDKSystemTextToSpeechEngine", sha: "5e67446ce384e4fda39a4ababbdb96257bf066b9f10159aa1733008d3b036f88", version: "0.2.2481", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "cd764e053a04bc569d938e6e9f1c816e721d24a611cb0a3dcb0d7c4799442274", version: "0.2.2481", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDynamicRoutingApi", sha: "33ac2a739b7e7b2dae96f39ef9719e9192f67dcfca1ceeddd233cf99125fb052", version: "0.2.2481", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKOnlineDynamicRoutingApi", sha: "4a096e9f54e0ff85e883e4902f0cc43d76d72f600ff4c121413028f26e599760", version: "0.2.2481", dependencies: [
        "TomTomSDKDynamicRoutingApi",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKNavigationVisualizationAddon", sha: "1e2d0881ef22c865f4128607fc83367755a9ce1b1a3292828525b966b460f95b", version: "0.2.2481", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapsDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRangeVisualizationAddon", sha: "0ac9ba0671c847ecfa7c601606c3d64300e0cceb3cbacec84ff6d3586dc89639", version: "0.2.2481", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKMapsDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKFrameworkClientCommonInternal", sha: "ecdec8724ca9b67449f7f2f954b78b3e71a1d3a25b6fa6b15a53dfe324fbe301", version: "19.8.0", isProduct: false),
    Module("TomTomSDKNavigationDrivingAssistanceClientInternal", sha: "8050ec05ccc03f6d78bfaeaf68e400a05a51b4fedc68ae6360511a521f37133e", version: "19.8.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKFrameworkMemChannelInternal", sha: "0853e7585266119d803ba797136a0020bddd3334f09e8ff2449b9a74d6809657", version: "19.8.0", isProduct: false),
    Module("TomTomSDKNavigationClientInternal", sha: "d32173fd96e86fb02d40cd61069eb247c45b48e7be5aa4ac7a60b32dcae88d90", version: "19.8.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKFrameworkSecurityInternal", sha: "ce01f9ad0d144aa3e93b8734373b42f914be639d0309a559b1ac290e48f81028", version: "19.8.0", isProduct: false),
    Module("TomTomSDKNavigationServiceInternal", sha: "e7179a8f185c271ff22ae72db477a41d0c60f6c4a16ac2a3c11de61d96951ed8", version: "19.8.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKNavigationPositioningInternal", sha: "135e48aee0b45aa28ae2ef3b637f057675d1f4c3402c64fbfb84c6c1f628873a", version: "19.8.0", isProduct: false),
    Module("TomTomSDKNavigationMapMatcherPredictionInternal", sha: "caf02dafce521b4f36ed0273b858cb4a40cdecfdbbbc806b3af526d6ef45f61a", version: "19.8.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKNavigationTextGenerationInternal", sha: "357a37c191d066a23e1671904feb88d0242e135ae38b9ed895f76846dc6f6f4f", version: "19.8.0", isProduct: false),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "7b1c64e8277afd42e260a69cd8a0155d5074b41efdc116fcc08b7435a03b0ea6", version: "0.2.2481", isProduct: false),
    Module("TomTomSDKDynamicRoutingApi", sha: "33ac2a739b7e7b2dae96f39ef9719e9192f67dcfca1ceeddd233cf99125fb052", version: "0.2.2481", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "5c3418cc169b1f780d6fc90591735e4fd4ae284573a020a87d7ced581299cd2d", version: "0.2.2481", isProduct: false),
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
