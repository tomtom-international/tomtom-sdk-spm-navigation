// swift-tools-version: 6.0

// © 2022 TomTom N.V. All rights reserved.
//
// This software is the proprietary copyright of TomTom N.V. and its subsidiaries and may be
// used for internal evaluation purposes or commercial use strictly subject to separate
// license agreement between you and TomTom N.V. If you are the licensee, you are only permitted
// to use this software in accordance with the terms of your license agreement. If you are
// not the licensee, you are not authorized to use this software in any manner and should
// immediately return or destroy it.

import PackageDescription

let sdkVersion = "0.73.2"

let package = Package(
    name: "TomTomSDKNavigationFrameworks",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [ /* products are set later */ ],
    dependencies: [
        .package(url: "https://github.com/tomtom-international/tomtom-sdk-spm-core", exact: Version(stringLiteral: sdkVersion)),
    ],
    targets: [ /* targets are set later */ ],
    swiftLanguageVersions: [.v5]
)

let modules: [Module] = [
    Module("TomTomSDKNavigationEngines", sha: "e72729f7fbd040e8f679cba6842b85693bb08d0d84c8211b6616cc613bd41875", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKNavigation", sha: "9a8288e447407eac0348575bcce8a88f9351b6bba5f949d6e673d1998ff33937", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKRouteReplannerInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTextGenerationInternal"),
        .navigationPackageModule("TomTomSDKMapMatchingEngineCommon"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineCommon"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKVehicle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKNavigationUI", sha: "a613df1d7b8261c0669d20a304d1a0f77ad69df6022afbd510a387c65dc11079", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKTextToSpeech"),
        .navigationPackageModule("TomTomSDKDefaultTextToSpeech"),
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKVehicle"),
    ]),
    Module("TomTomSDKTextToSpeechEngine", sha: "f9dead861f955f01753ebd071997a3ecb8c480d58205b7ea496ea40b676d9454", version: "0.73.2"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "f88ea087e58253ad13789d5123a2015bef19b4e53c7ded847dc6d2a466a5b953", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
    ]),
    Module("TomTomSDKTextToSpeech", sha: "768a813bf129be7914c560f1692064428da5f65e6b01c22502c5b3215cb61665", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "c66d4d00ac45a004e0076d5d13e44bb7018b77d880f65f0add870f7d747c8bc4", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependency
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDataManagement", sha: "dca3be6440c6bf734275b22642f6a1787acf68dadfa58ac6ab145617915fd444", version: "0.73.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKUnifiedLocationDecoder", sha: "feb1fcee620dca3500b18c224b29713394800b7e3ef839d1052dba5e505a6616", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKBindingUnifiedOpenLRInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "7d661ca01e55797591d5e9fe80c3436355c1aaab0b1bf8bc68763978853b919d", version: "0.73.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "b36dded4a3b91f16342b6607e55de1930c253a062b4964fbb64921bda7e896bc", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "4e3b6ef6bfb19cd57403067d318c923be85154e5cf4a3d9606588f04f0a588c0", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKRouteReplannerInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKNavigationVisualization", sha: "c349a2557aa32bedb96573dced5a63d5b11d848e6ba2831f80406cc128a6a724", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoutingVisualization"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "18b1581b745eb6d7d87a780a4a13721614e838ad06f3f5730d88a1cec3bbe082", version: "0.73.2"),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "97cbf90624b3fc4ad7322a4755ac4249b47fd9c6a7a3998c71ccb93e4755f598", version: "0.73.2"),
    Module("TomTomSDKNavigationTileStore", sha: "2de24c537bfca63ec81b7b87cde8b52a9d8fa0b81eccdba63af9a670df45b966", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKBindingFrameworkSecurityInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKBindingNDSLiveTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTilingInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKBindingNavigationTileMapUpdateInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "807646f02436838a457896e5ddb1ede2f1cf472eed73708cfe44a2939d8f6773", version: "0.73.2"),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "c3829510ab463c5217719f093d37b5e28061b4af772437affa6936060cb00f33", version: "0.73.2"),
    Module("TomTomSDKBindingUnifiedOpenLRInternal", sha: "ec2fd425c909a7b3e7bb4e9b6d4868fe3e0fa60929b3ccce8aaf4c6c7b54e915", version: "0.73.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingNDSLiveTileStoreAccessInternal", sha: "768a548d0060bea47cb2bc5d3871005ead1297e4563318ff59bb8eb4577f382f", version: "0.73.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingNavigationTilingInternal", sha: "104f30e07354481662c6c903d9fdb665456c1bc6e8cdf915457ef9b3495c6a77", version: "0.73.2"),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "dcdd83c70c740f8320c2dd52576a04cd521d892cf2ced32517a784719a399dae", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineCommon"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKRouteProjectionEngineUnified", sha: "daa121f2ac8b9294999c85794305c08e2e63397601992b8291b62d999e16215a", version: "0.73.2", dependencies: [
        // core package dependency
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        // navigation package dependency
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineCommon"),
    ]),
    Module("TomTomSDKRouteProjectionEngineCommon", sha: "bfb7527500981e6da207a7badadc214d20216c3ebd2fc3d5d07a061d110f27b6", version: "0.73.2", dependencies: [
        // navigation package dependency
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependency
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "419d29129c7998902c9fb970b2d711967946f5db5a8d2ad964a7397e1dd0c14e", version: "0.73.2"),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "04e14914e5e834e985fb3df692a6b58cbef7826f2d163b9f678df96bcb74bd09", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKBindingMapMatchingInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "9d99c932f7c0b396be2068d618906c915e0301c10b527d1e47b9f56cfa921694", version: "0.73.2", dependencies: [
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

    Module("TomTomSDKMapMatchingEngineUnified", sha: "d1b37456221eb5c8d6c13f868bd9e872abbfcecfa5e25f4b087c7346a290b3df", version: "0.73.2", dependencies: [
        // core package dependency
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),

        // navigation package dependency
        .navigationPackageModule("TomTomSDKBindingMapMatchingInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKMapMatchingEngineCommon"),
    ]),

    Module("TomTomSDKNavigationHorizonDataAdapter", sha: "67ef1ca242fe928cad7ea3b47ed2f2329380952fe95a4fabcae2696a2660ca75", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSafetyCameras", sha: "30617f8afac85d087c7d83a4a59d3d16e43419120bb1e3548fd23aa8f653e553", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKBindingOpenLRInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSafetyLocationsDataAdapterOnline", sha: "f56ec4ef366ce386f8a3e8641b3ce1be77e4aa9bf91a7fde401e466156aedc0c", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKSafetyCameras"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKHazards", sha: "372f74080c28224bf1fe11f340e29a819c1a18c828650ad44198abae666c017f", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKBindingOpenLRInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKMQTT"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazardsDataAdapterOnline", sha: "32a205b2264a04e2606de6a23b5a6a04eed1bc1380190f7c5b1e65c4b7c1187f", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKHazards"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKLocationTracesRecorder", sha: "3c09f094b3729cd12a9a824b703fbe09fad10355c6ccfa4f4aa3c6bcd6da872e", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKNavigationOffRoad", sha: "8402d0646c6aa12d46b1bd3463d9c0653c44cdc3c6f3fbf4785a2490c1804e99", version: "0.73.2", dependencies: [
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
    Module("TomTomSDKDataStoreMaintenanceEngine", sha: "7185ca6bb0baa9cc95a4ab8e328f5e5f9474c8c7775efc1debe1f84b3a25240e", version: "0.73.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        // navigation package dependency
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKDataManagement"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonTileStoreMapInternal", sha: "064fd0143fa380b242cd10e979e592bf8dfb221db15cb9c5d0d7f241fc1afb75", version: "0.73.2"),
    Module("TomTomSDKBindingVehicleHorizonUnifiedMapInternal", sha: "9acd2c1dcbe845b7bbfc36048525998c77b4fe5323fa310bb4ffb66abf54f0f5", version: "0.73.2"),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "dfe6756b5ebae8f291f7dfa45a5189374e998e32d185a05220d16b7d1eaf873a", version: "0.73.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHorizonEngineCommon", sha: "13410148141f69e871ab0b334d65d2d70fa3001795e6bc7cc86ab27699552d78", version: "0.73.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKTraffic"),
        // navigation package dependency
        .navigationPackageModule("TomTomSDKBindingVehicleHorizonInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKHorizonEngineUnified", sha: "1c9dc3b3e29f1a69c6296c05384fc90c30b66454404ba099b2590f74984502db", version: "0.73.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKTraffic"),
        // navigation package dependency
        .navigationPackageModule("TomTomSDKBindingUnifiedOpenLRInternal"),
        .navigationPackageModule("TomTomSDKBindingVehicleHorizonUnifiedMapInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKHorizonEngineCommon"),
        .navigationPackageModule("TomTomSDKUnifiedLocationDecoder"),
        .navigationPackageModule("TomTomSDKHazards"),
        .navigationPackageModule("TomTomSDKHazardsDataAdapterOnline"),
        .navigationPackageModule("TomTomSDKSafetyCameras"),
        .navigationPackageModule("TomTomSDKSafetyLocationsDataAdapterOnline"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
    ]),
    Module("TomTomSDKHorizonEngineTileStore", sha: "92f6a865db6213d9add048ad50466f66fecfbdac00b07da3201186a15b824b76", version: "0.73.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        // navigation package dependency
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKHorizonEngineCommon"),
        .navigationPackageModule("TomTomSDKBindingVehicleHorizonTileStoreMapInternal"),
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        .navigationPackageModule("TomTomSDKUnifiedLocationDecoder"),
        .navigationPackageModule("TomTomSDKBindingUnifiedOpenLRInternal"),
        .navigationPackageModule("TomTomSDKHazards"),
        .navigationPackageModule("TomTomSDKHazardsDataAdapterOnline"),
        .navigationPackageModule("TomTomSDKSafetyCameras"),
        .navigationPackageModule("TomTomSDKSafetyLocationsDataAdapterOnline"),
    ]),
    Module("TomTomSDKNavigationOnline", sha: "0739fa120a9d87adaeae175aa9152b91ae12dc1e9a013abfad9bdbef1d3e3c20", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKDataStoreMaintenanceEngine"),
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKMapMatchingEngineTileStore"),
        .navigationPackageModule("TomTomSDKMapMatchingEngineUnified"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineCommon"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineTileStore"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineUnified"),
        .navigationPackageModule("TomTomSDKHorizonEngineTileStore"),
        .navigationPackageModule("TomTomSDKHorizonEngineUnified"),
        .navigationPackageModule("TomTomSDKHazards"),
        .navigationPackageModule("TomTomSDKSafetyCameras"),
        .navigationPackageModule("TomTomSDKRouteReplannerDefault"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKVehicle"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTraffic"),
    ]),
    Module("TomTomSDKBindingOpenLRInternal", sha: "514f5f52a22a1231f1ecfecb7830c27e416ebc53873b4fc8a7ad349c7db69545", version: "0.73.2"),
    Module("TomTomSDKBindingNavigationTileMapUpdateInternal", sha: "0e9b9b41a8db4d5428f41b35329972fe61a310883909ec45640a5a015a9ab4db", version: "0.73.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),

    Module("TomTomSDKMapTileStoreNavigation", sha: "8a496687ff48cc1c6e312694fe7ed50067d8127cddc4038851af0319b1250b34", version: "0.73.2", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKMapTileStoreCommon"),
    ]),
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

    static func thirdpartyPackageModule(_ name: String, package: String) -> ModuleDependency {
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

    typealias StringLiteralType = String
}

extension Array where Element == Module {
    var products: [Product] {
        compactMap { $0.product }
    }

    var targets: [Target] {
        flatMap { $0.targets }
    }
}
