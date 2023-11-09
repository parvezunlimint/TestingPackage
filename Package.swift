// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let MOYA_VERSION: PackageDescription.Version = "15.0.3"
let ALAMOFIRE_VERSION: PackageDescription.Version = "5.6.4"

let UNLIMINT_CORE_VERSION: PackageDescription.Version = "2.0.1"

let package = Package(
    
  name: "UnlimintSDK_Core",
  platforms: [.iOS(.v14)],
  products: [
    .library(
      name: "UnlimintSDK_Core",
      targets: ["UnlimintSDK_CoreA"]
    )
  ],
  
  dependencies: [
    .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: MOYA_VERSION)),
    .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: ALAMOFIRE_VERSION))
  ],
  
  targets: [
    
    .target(
      name: "UnlimintSDK_CoreA"
    ),

    .binaryTarget(
      name: "UnlimintSDK_Core",
      url: "https://github.com/parvezunlimint/TestingPackage/releases/download/1.0.0/UnlimintSDK-Core.zip",
      checksum: "b54699064a6a5c9745e5b33d5f1258447e55dc230a0a8a04b9f71cb20e1dcabdec1bba9386f90337789f8d1a26f7915caeb2b4fb0aa5ffac94e274b436954bd8"
    )
  ],
  swiftLanguageVersions: [.v5]
)
