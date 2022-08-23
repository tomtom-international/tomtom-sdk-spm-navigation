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

let sdkVersion = "0.2.1869"

let modules: [Module] = [
    Module("TomTomSDKNavigationEngine", sha: "854b3f2244d6ad6a4c660246bba074c6a2737da214567b98231afdbaf27b28b4", dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKNavigationClientInternal",
        "TomTomSDKNavigationServiceInternal",
        "TomTomSDKNavigationPositioningInternal",
        "TomTomSDKNavigationMapMatcherPredictionInternal",
        "TomTomSDKFrameworkMemChannelInternal",
        "TomTomSDKNavigationDrivingAssistanceClientInternal",
        "TomTomSDKNavigationTextGenerationInternal",
        "TomTomSDKDynamicRoutingApi",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKFeatureToggle", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKHTTPFramework", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKFrameworkLoggingInternal", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKFrameworkHTTPInternal", package: "tomtom-sdk-spm-core-dev"),
    ]),
    Module("TomTomSDKNavigationView", sha: "098f1136fea0a5a567434e8c2c0c488b64e70dcfd3be86d6775ba9f80c320551", dependencies: [
        "TomTomSDKNavigationEngine",
        "TomTomSDKTextToSpeech",
        "TomTomSDKSystemTextToSpeechEngine",
        "TomTomSDKTextToSpeechEngine",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKUIComponents", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKRoute", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKRouting", package: "tomtom-sdk-spm-core-dev"),
        .packageDependency("TomTomSDKLocation", package: "tomtom-sdk-spm-core-dev"),
    ]),
    Module("TomTomSDKTextToSpeechEngine", sha: "d03eea26ab081fc58173000d3178a7f534fcd51a42bbf349a65c7536fee6f984"),
    Module("TomTomSDKSystemTextToSpeechEngine", sha: "1a65d8211a46b2e448e26ebb700b4c28240efd10fe6dfc720dff9808747b4ff8", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKTextToSpeech", sha: "9458cc116c05f8393e9845a2a43857321a029aa80ef3b9e71b7dad4fa8ef2884", dependencies: [
        "TomTomSDKTextToSpeechEngine",
    ]),
    Module("TomTomSDKDynamicRoutingApi", sha: "147a5a275e770f306315076c9a46733a680776948ea628e1a8fc34c450fc6fb4", dependencies: [
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core-dev"),
    ]),
    Module("TomTomSDKOnlineDynamicRoutingApi", sha: "431cc184a86c801db97d1b4fb0f556e56c613875063922e5c836630fb6e0a010", dependencies: [
        "TomTomSDKDynamicRoutingApi",
        // core package dependencies
        .packageDependency("TomTomSDKCommon", package: "tomtom-sdk-spm-core-dev"),
    ]),
    Module("TomTomSDKFrameworkClientCommonInternal", sha: "a169d18ba28d5a0b09ceb700f89d4f56571530b5e32c9597efe2efbd05cef086", version: "12.10.0", isProduct: false),
    Module("TomTomSDKNavigationDrivingAssistanceClientInternal", sha: "83b936c32fe06b8e44ff03d3a6ccf27a2e3813b9f27020fde60f59795355aceb", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKFrameworkMemChannelInternal", sha: "545adcd52a25086646994e20e151ef479d3a46ef6728bf52a705c886c77564d2", version: "12.10.0", isProduct: false),
    Module("TomTomSDKNavigationClientInternal", sha: "b471efa91a1f5f64e98a22e426679eac8b8c9080d4a73ba5219f887f8e06bae2", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
        "TomTomSDKFrameworkMemChannelInternal",
    ]),
    Module("TomTomSDKFrameworkSecurityInternal", sha: "9f1f5daff791fa487831107a0dc3f4700a05049a7bdf4afad08f23ed88af9ef5", version: "12.10.0", isProduct: false),
    Module("TomTomSDKNavigationServiceInternal", sha: "c6b16e5aeb4a317462276da481ebd760847315911215d2241a17868f0a96d588", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkSecurityInternal",
    ]),
    Module("TomTomSDKNavigationPositioningInternal", sha: "6067d70114e41b056b2a87abcb8712a0b049e15e04ba5ba19441b6226c94e4f8", version: "12.10.0", isProduct: false),
    Module("TomTomSDKNavigationMapMatcherPredictionInternal", sha: "b1998e7ce52097b5fbc408e0f07b9c61b5511d06cfa29ad5f7ef521ecd23be15", version: "12.10.0", isProduct: false, dependencies: [
        "TomTomSDKFrameworkClientCommonInternal",
    ]),
    Module("TomTomSDKNavigationTextGenerationInternal", sha: "98e90dda90e088c3c44e294fb12d9aa47f31ffb80e5dd63d72939e43155953a3", version: "12.10.0", isProduct: false),
]

let package = Package(
    name: "TomTomSDKNavigation",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: modules.products,
    dependencies: [
        .package(url: "https://github.com/tomtom-internal/tomtom-sdk-spm-core-dev", exact: Version(stringLiteral: sdkVersion)),
    ],
    targets: modules.targets,
    swiftLanguageVersions: [.v5]
)

private extension String {
    func artefactUrl(version: String) -> String {
        "https://repositories.tomtom.com/artifactory/sdk-cocoapods/\(self)/\(version)/\(self).zip"
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

    init(_ frameworkName: String, sha: String, version: String = sdkVersion, isProduct: Bool = true, dependencies: [ModuleDependency] = []) {
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
