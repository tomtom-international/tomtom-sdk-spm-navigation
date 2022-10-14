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

let sdkVersion = "0.2.2436"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "173092a3f97a10a1487226e717f044cc45f2065cbe2c9c0d8fb65a872f84c186", version: "0.2.2436", dependencies: [
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
    Module("TomTomSDKNavigationView", sha: "ce9c4c2e40be891e606fb71acf082d1d04302358900b58d84469f90e5f8ab510", version: "0.2.2436", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "c36af2abb10acb0a10b78d44d8c44bf0fd7acd93104f5ecd2c66c92d2570fd19", version: "0.2.2436"),
    Module("TomTomSDKSystemTextToSpeechEngine", sha: "356a990d41223a37e2465be7e312b6c1b1140bdf65e6caa2f9b7d4ef646215be", version: "0.2.2436", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "de660c0a321ef96ca0b04f6508f212242a49a09f6c273f097f458430ff830e65", version: "0.2.2436", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDynamicRoutingApi", sha: "bcb2b6310ab46228f84ab74bcb351b16e25697e5171a9ec22d9d57d1e8e5e7a9", version: "0.2.2436", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKOnlineDynamicRoutingApi", sha: "d0ba1bd89d1d0c28f2e761f44677e1d0cfdcd2c7e17c9a1ec5e89ac2ccc439f6", version: "0.2.2436", dependencies: [
        "TomTomSDKDynamicRoutingApi",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKNavigationVisualizationAddon", sha: "209c4e2320bc020b46ac3f497eaa92da00e0323eed2eac2884d9d6b78fc23346", version: "0.2.2436", dependencies: [
        "TomTomSDKNavigationEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKMapsDisplay", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKRangeVisualizationAddon", sha: "d70320fc4e085316a2a8565e9a8d609ac2886fe706b9369bedbeba012544ee09", version: "0.2.2436", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKMapsDisplay", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKFrameworkClientCommonInternal", sha: "5c8e7057ca0c3d3c44ecb66f2b51f3d9d424fb4277a070a0f98cf03024e6f87e", version: "18.83.0", isProduct: false),
    Module("TomTomSDKNavigationDrivingAssistanceClientInternal", sha: "bb0fea2743f32f64b2ff730ba1f71b832d730d56c34cbe78e90ad9e5d43154be", version: "18.83.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKFrameworkMemChannelInternal", sha: "a8eef304d49919f998d0c24308b65f9dde2e61c6f3f35afafbf9bcb7675fc4d2", version: "18.83.0", isProduct: false),
    Module("TomTomSDKNavigationClientInternal", sha: "137e9a4982035aa6583e50d85d86d6b37a8f8ba16c3c1e633d38e2d1ddfdad90", version: "18.83.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKFrameworkSecurityInternal", sha: "bb09f676a955a9a08b4d26d9df1baf910940eae5420717f2f09eb377f868c3b5", version: "18.83.0", isProduct: false),
    Module("TomTomSDKNavigationServiceInternal", sha: "04c6eeed12021ffabb0a2e74dba5026209c1337a94d5f2c35fd250db772c4c6a", version: "18.83.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKNavigationPositioningInternal", sha: "1ad498506d45304195f1bb3255ef772aa365613625d0dac0582df5170434de4c", version: "18.83.0", isProduct: false),
    Module("TomTomSDKNavigationMapMatcherPredictionInternal", sha: "17fc1b6da8592a1bd35a7260c548df725561aca3701fd0a687eaff067d7b55ea", version: "18.83.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKNavigationTextGenerationInternal", sha: "c8f9aaa8c9bb8e724f80016a8c901f2b2106b07b6de7c8a457a0874ae894c7d6", version: "18.83.0", isProduct: false),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "99b738729ca03f7d6e3a7d6a3f64954014327f7dd016b278c0e40ff09413d110", version: "0.2.2436", isProduct: false),
    Module("TomTomSDKDynamicRoutingApi", sha: "bcb2b6310ab46228f84ab74bcb351b16e25697e5171a9ec22d9d57d1e8e5e7a9", version: "0.2.2436", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core"),
    ]),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "6a6b9c2bb0199307321cb4dbc5b1057bb1539902ee91d8f8deee8be38efc2325", version: "0.2.2436", isProduct: false),
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
