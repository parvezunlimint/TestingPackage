// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let SWINJECT_VERSION: PackageDescription.Version = "2.8.0"
let MOYA_VERSION: PackageDescription.Version = "15.0.3"
let MOTAMO_VERSION: PackageDescription.Version = "7.5.2"
let ALAMOFIRE_VERSION: PackageDescription.Version = "5.6.4"

let UNLIMINT_CORE_VERSION: PackageDescription.Version = "2.0.1"
let UNLIMINT_SWIFTUI_VERSION: PackageDescription.Version = "2.0.1"

//
//let package = Package(
//    name: "Unlimint_SwiftUI",
//    platforms: [
//        .iOS(.v14)
//    ],
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//       .library( name: "UnlimintSDKCore", targets: ["UnlimintSDKCoreTarget"]),
////       .library( name: "UnlimintSDKSwiftUI", targets: ["UnlimintSDKSwiftUI1"]),
//
//    ],
//    dependencies: [
//        // Dependencies declare other packages that this package depends on.
//        // .package(url: /* package url */, from: "1.0.0"),
//
//        .package(url: "https://github.com/Swinject/Swinject.git", from: SWINJECT_VERSION),
//        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: MOYA_VERSION)),
//        .package(url: "https://github.com/matomo-org/matomo-sdk-ios.git", .upToNextMajor(from: MOTAMO_VERSION)),
//        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from:ALAMOFIRE_VERSION))
//
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
//        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//
//        .binaryTarget(
//                    name: "UnlimintSDKCoreBinary",
//                    path: "./Sources/UnlimintSDK_Core.xcframework"),
//
////        .binaryTarget(name: "UnlimintSDK_SwiftUI",
////                      path: "./Sources/UnlimintSDK_SwiftUI.xcframework"),
//
//
//        .target(
//            name: "UnlimintSDKCoreTarget",
//            dependencies: ["Moya",
//                           "Alamofire",
//                           "matomo-sdk-ios",
//                           "UnlimintSDKCoreBinary"]),
//
//
////        .target(
////            name: "UnlimintSDKSwiftUI1",
////            dependencies: ["UnlimintSDK_Core", "Swinject", "Moya", "MatomoTracker"]),
//    ]
//)




//let package = Package(
//    name: "Unlimint_SwiftUI",
//    platforms: [
//        .iOS(.v14)
//    ],
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//       .library( name: "UnlimintSDKCore", targets: ["FirstFrameworkTargets"]),
////       .library( name: "UnlimintSDKSwiftUI", targets: ["UnlimintSDKSwiftUI1"]),
//
//    ],
//    dependencies: [
//        // Dependencies declare other packages that this package depends on.
//        // .package(url: /* package url */, from: "1.0.0"),
//
//        .package(url: "https://github.com/Swinject/Swinject.git", from: SWINJECT_VERSION),
//        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: MOYA_VERSION)),
//        .package(url: "https://github.com/matomo-org/matomo-sdk-ios.git", .upToNextMajor(from: MOTAMO_VERSION))
//
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
//        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//
//        .binaryTarget(
//                    name: "UnlimintSDK_Core",
//                    url: "https://github.com/cardpay/ios-sdk-podspec/releases/download/2.0.1/UnlimintSDK_Core.zip",
//                    checksum: "c4e46a2bb0f972a423bdae259c57f94f8b7a51d768a20d9acfd2aad7cbe8e898"),
//
//        .target(name: "FirstFrameworkTargets",
//                        dependencies: [
//                            .target(name: "UnlimintSDK_Core"),
//                            .target(name: "Moya")
//
//                        ],
//                    path: "FirstFrameworkTargets")
//    ]
//)



//let package = Package(
//
//    name: "Unlimint_SwiftUI",
//    platforms: [
//        .iOS(.v13)
//    ],
//    products: [
//        .library(
//            name: "UnlimintSDK_Core",
//            targets: ["UnlimintSDK_Core_Target"]
//        )
//    ],
//
//    dependencies: [
//        // Dependencies declare other packages that this package depends on.
//        // .package(url: /* package url */, from: "1.0.0"),
//
//        .package(url: "https://github.com/Swinject/Swinject.git", from: SWINJECT_VERSION),
//        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: MOYA_VERSION)),
//        .package(url: "https://github.com/matomo-org/matomo-sdk-ios.git", .upToNextMajor(from: MOTAMO_VERSION))
//
//    ],
//
//    targets: [
//        .binaryTarget(
//                    name: "UnlimintSDK_Core",
//                    url: "https://github.com/cardpay/ios-sdk-podspec/releases/download/2.0.1/UnlimintSDK_Core.zip",
//                    checksum: "c4e46a2bb0f972a423bdae259c57f94f8b7a51d768a20d9acfd2aad7cbe8e898"),
//
//        .target(name: "FrameworkCTargets",
//                dependencies: [
//                    .target(name: "UnlimintSDK_Core", condition: .when(platforms: .some([.iOS])))
//                ],
//                path: "FrameworkCTargets"
//        )
//    ],
//    swiftLanguageVersions: [.v5]
//)



let package = Package(
    
  name: "Unlimint",
  platforms: [.iOS(.v14)],
  products: [
    .library(
      name: "UnlimintSDK_Core",
      targets: ["UnlimintSDK_CoreTarget"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/Swinject/Swinject.git", from: SWINJECT_VERSION),
    .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: MOYA_VERSION)),
    .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: ALAMOFIRE_VERSION))

  ],
  
  targets: [
    
    .target(
      name: "UnlimintSDK_CoreTarget",
      dependencies: [
        .target(name: "UnlimintSDK_Core_Wrapper", condition: .when(platforms: [.iOS, .macCatalyst, .macOS, .tvOS])),
        .target(name: "Unlimint_Alamofire", condition: .when(platforms: [.iOS, .macCatalyst, .macOS, .tvOS]))
        
      ],
      path: "UnlimintSDK_Core"
    ),

    .target(
      name: "UnlimintSDK_Core_Wrapper",
      dependencies: [
        .target(
          name: "UnlimintSDK_Core",
          condition: .when(platforms: [.iOS])
        ),
        .product(name: "Swinject", package: "Swinject"),
        .product(name: "Moya", package: "Moya"),
      ],
      path: "UnlimintSDK_Core_Wrapper",
      linkerSettings: [
        .linkedLibrary("z"),
      ]
    ),
    
    
    .target(
        name: "Unlimint_Alamofire",
        dependencies: [
            .target(
                name: "UnlimintSDK_Core",
                condition: .when(platforms: [.iOS])
            ),
            .product(name: "Alamofire", package: "Alamofire")
                
        ],
        path: "Unlimint_Alamofire",
        linkerSettings: [
            .linkedLibrary("z"),
        ]
    ),
    
    .binaryTarget(
      name: "UnlimintSDK_Core",
      url: "https://github.com/parvezunlimint/TestingPackage/releases/download/1.0.1/UnlimintSDK-Core.xcframework.zip",
      checksum: "b2bef0998b9f8b71028289c686e54f6f018d82e16ae5734e592bd6fcedc86e7b"
    )
  ],
  swiftLanguageVersions: [.v5]
)
