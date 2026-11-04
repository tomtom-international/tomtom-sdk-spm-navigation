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

let sdkVersion = "0.75.3"

let package = Package(
    name: "TomTomSDKNavigationFrameworks",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [ /* products are set later */ ],
    dependencies: [
        .package(url: "https://github.com/tomtom-international/tomtom-sdk-spm-core", exact: Version(stringLiteral: sdkVersion)),
    ],
    targets: [ /* targets are set later */ ],
    swiftLanguageModes: [.v5]
)

let modules: [Module] = [
    Module("TomTomSDKNavigationEngines", sha: "fd0e44d1aa881e62c084264acfb98f68e4af21138eef29db0779ac31d58dfff1", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKNavigation", sha: "5b142b98f02a0e0efbb87f204d880692e54671627dc130bc620c27c544cb6f9c", version: "0.75.3", dependencies: [
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
    Module("TomTomSDKNavigationUI", sha: "8ae1057b8c9553bf18361cad62a177701504670a849c80509943c518643e79b2", version: "0.75.3", dependencies: [
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
    Module("TomTomSDKTextToSpeechEngine", sha: "6603cdb10248dca1ec1934ed72f84a1818128f80f64aa37144b2912d6d27f3f5", version: "0.75.3"),
    Module("TomTomSDKDefaultTextToSpeech", sha: "b9a8ee5413e4b27b34f67f840c92834404007a5b8b1b017b3f59fed830a43ae6", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
    ]),
    Module("TomTomSDKTextToSpeech", sha: "cab42b3895d078435e4c516ea59218355c6fd8df80bf74d76419f9f4b69932d0", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKTextToSpeechEngine"),
    ]),
    Module("TomTomSDKDataStoreUpdater", sha: "99324c25ec78362e21984d2d9f35802919d816755c64bc67ef83c84ebb42a0df", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigation"),
        // core package dependency
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDataManagement", sha: "7ee58fc928d8d4366fbc8d359a5aa834c68d27abb062f8ac7eeaf1f7cc0bad00", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKBindingNDSMapReferencesConversionInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKUnifiedLocationDecoder", sha: "1573fa418cab09d3b5cd856f8efbbbd4a360e18ff9aa9f8e943ef4b3d5e1f173", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKBindingUnifiedOpenLRInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRouteReplanner", sha: "2d928da9815321716b67f2d3a33346a450b2e9f2475d3b754fb22fed0f07fd46", version: "0.75.3", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRouteReplannerInternal", sha: "5607e2f6de91bad547441d3f2b2b17f1a48961c49e7536bd4455f3ad4e44f3c9", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        // core package dependencies
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRouteReplannerDefault", sha: "391a84929c9f2790a34a8106344e37cf45aab3a6845f3c08b02d5971908236e2", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKRouteReplanner"),
        .navigationPackageModule("TomTomSDKRouteReplannerInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKNavigationVisualization", sha: "d534084dc10a784686c0ee0238cd6937a56a2f3bb985d53e2e792ac4ffb40ce8", version: "0.75.3", dependencies: [
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
        .corePackageModule("TomTomSDKVisualizationCommon"),
    ]),
    Module("TomTomSDKBindingFrameworkSecurityInternal", sha: "75d4eec44aaab1050009a74d721e03964e9268f915cd955110b124c68b54bc3d", version: "0.75.3"),
    Module("TomTomSDKBindingNavigationTextGenerationInternal", sha: "66ec3b6c9f2a2f32b837836bbfec98b5c5ba0601b88e9135c167f8d940c4729d", version: "0.75.3"),
    Module("TomTomSDKNavigationTileStore", sha: "a86382f03117acaeda45a9e7beec655a9a2dc9c528bc50f57ac534db84c8222b", version: "0.75.3", dependencies: [
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
    Module("TomTomSDKBindingRouteProjectionInternal", sha: "be2b29ac7e68326e697636a35657b24bb0cbe438c294760d38680f7de9411b8d", version: "0.75.3"),
    Module("TomTomSDKBindingNavigationTileStoreAccessInternal", sha: "2eecbadf2fb2b0b4ed5d57e0d0e3b16e0681910cca14755bb1c0b51011a6b25d", version: "0.75.3"),
    Module("TomTomSDKBindingUnifiedOpenLRInternal", sha: "b41dda62f2701e20798cf1049a9a65dc34ca412d4b03849bdee93d3cdd142927", version: "0.75.3", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingNDSLiveTileStoreAccessInternal", sha: "df60e6de8478432d252b9833d50da4dbc2b907e496e7dd5d88e2f98a365fa1c2", version: "0.75.3", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingNDSMapReferencesConversionInternal", sha: "77ceef8abbca204beb0b6b4d77e3d72d909a28a628609fdf40849819f4c16093", version: "0.75.3"),
    Module("TomTomSDKBindingNavigationTilingInternal", sha: "3b4a75ae9c9461aa1c6ba7c6d19147ca603a18ebc5b169bf2612abb121157774", version: "0.75.3"),
    Module("TomTomSDKRouteProjectionEngineTileStore", sha: "4e718f93af926940e9b1ab503c96d18ac1771caff0205259d82902286d524d9a", version: "0.75.3", dependencies: [
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
    Module("TomTomSDKRouteProjectionEngineUnified", sha: "05663a4acb8f11a0613a828a11624960c86b56de1d9f856f1b5cce28b5823b5c", version: "0.75.3", dependencies: [
        // core package dependency
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        // navigation package dependency
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKRouteProjectionEngineCommon"),
    ]),
    Module("TomTomSDKRouteProjectionEngineCommon", sha: "d708449e1ec1fe55437b1d9c70c981a8ff832dbc0e8d6e0dccc4ea504a195b9a", version: "0.75.3", dependencies: [
        // navigation package dependency
        .navigationPackageModule("TomTomSDKBindingRouteProjectionInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependency
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingMapMatchingInternal", sha: "41b54720651b1575b95d473e8931dc747266c8dd58828814f5d6ef30a6360b35", version: "0.75.3"),
    Module("TomTomSDKMapMatchingEngineCommon", sha: "9923977246d7cdeb745261bbf4b38ec8f5b654d34b7ee734c31ebc294c56d81d", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKBindingMapMatchingInternal"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKMapMatchingEngineTileStore", sha: "ce22c76dfba377ed8695992a6074318462f854c836df510b2df0bccd498bba74", version: "0.75.3", dependencies: [
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

    Module("TomTomSDKMapMatchingEngineUnified", sha: "ff37f414121cc74ef3da500ccc695ecb9a696b94f7ee37c9b406d338c8c1831b", version: "0.75.3", dependencies: [
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

    Module("TomTomSDKNavigationHorizonDataAdapter", sha: "47dd0a4e788bb136d3a19e49d530a7744bfd4f4cd911444b5f8a68dd27831282", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSafetyCameras", sha: "bc05b69eaf4599f3939912d0621e429059f7991b4d6bebe758a7d97eb4a2a99c", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKBindingOpenLRInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSafetyLocationsDataAdapterOnline", sha: "0ffb93f80b143b9d73b9959bd0f7e443a437be37ce0a7a0b7e8532cef21befdf", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKSafetyCameras"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKHazards", sha: "8ef16a50255c97e7a265a2dffc4cbad522b19b609a58c2554eec738fa56453b1", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKBindingOpenLRInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKMQTT"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHazardsDataAdapterOnline", sha: "03dd31acdb56b4941d65a2bdbaf7183c0ddfebb0889672aef4415ca0061fdc1c", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKHazards"),
        .navigationPackageModule("TomTomSDKNavigationHorizonDataAdapter"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKLocationTracesRecorder", sha: "57baa080da1a1ce538fc63c155da46af9d08793f2d04f87a787adff9114b6af7", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKNavigationOffRoad", sha: "cf0f091dffafd6433dc59a2f3416eb5a9f436a4e46d735e2de763217d2672b82", version: "0.75.3", dependencies: [
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
    Module("TomTomSDKDataStoreMaintenanceEngine", sha: "b32505c05a477d41019f5875790edeeb11d7b47967f42cb1bdda429322d979f7", version: "0.75.3", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
        // navigation package dependency
        .navigationPackageModule("TomTomSDKNavigationEngines"),
        .navigationPackageModule("TomTomSDKNavigation"),
        .navigationPackageModule("TomTomSDKDataManagement"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonTileStoreMapInternal", sha: "832dc0e41c86f65402d9850393b4c8d843ac6b3c12c577efb79ae5d3bb9855b7", version: "0.75.3", dependencies: [
        // navigation package dependency
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
    ]),
    Module("TomTomSDKBindingVehicleHorizonUnifiedMapInternal", sha: "cb9fe508b5797d43dea718d3b827f872c1952458d63454af33aa546b44b584fe", version: "0.75.3"),
    Module("TomTomSDKBindingVehicleHorizonInternal", sha: "10eab4e14b7a60140e5d89b57b1eeb5a24450a1c69e3d3e0a3be0ef0ef53b633", version: "0.75.3", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKHorizonEngineCommon", sha: "2ea0f9504b1d9dd6c502e0d69f03bc781b7c478ce994fcc7be75f751655c3d8f", version: "0.75.3", dependencies: [
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
        .navigationPackageModule("TomTomSDKTrafficInternal"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKHorizonEngineUnified", sha: "0e322d0bc92ebb0c4446fc6ff12c29fc257c3da49ad270960454d10b772a5e70", version: "0.75.3", dependencies: [
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
    Module("TomTomSDKHorizonEngineTileStore", sha: "d8d0f97d3dc4b493a8f70b1569253429be8a79c9523693f40a5fd016526541f6", version: "0.75.3", dependencies: [
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
    Module("TomTomSDKNavigationOnline", sha: "695b6c06340303769178cbf4b0df5e53e2c0d4171f8ac14775f1ecb7acba4b44", version: "0.75.3", dependencies: [
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
    Module("TomTomSDKBindingOpenLRInternal", sha: "d80be2db11eac11760fe832c9f6dc6962ec822658fc599afaebe01c429035141", version: "0.75.3"),
    Module("TomTomSDKBindingNavigationTileMapUpdateInternal", sha: "ec64293013e1f4253e776433d2a5ae062e73be085d5ddbc068c08590b6556142", version: "0.75.3", dependencies: [
        .navigationPackageModule("TomTomSDKBindingNavigationTileStoreAccessInternal"),
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingTrafficClientInternal", sha: "fde83c0855fdfaa25f6505fc907a77107defece0b689df15b54d4a42434494d2", version: "0.75.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficInternal", sha: "beb1a9a6472696ca857972d5c9c69164705e4fc9a2acaa8cb3b9bb80d42d5215", version: "0.75.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKNetworking"),
        .navigationPackageModule("TomTomSDKDataManagement"),
        .navigationPackageModule("TomTomSDKBindingTrafficClientInternal"),
        .navigationPackageModule("TomTomSDKNavigationTileStore"),
    ]),

    Module("TomTomSDKMapTileStoreNavigation", sha: "0f27044fcb9d609d126e69e830264ca29e65c007c752cf678dda2e5f0c6fa07d", version: "0.75.3", dependencies: [
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
