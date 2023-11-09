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
      targets: ["UnlimintSDK_Core"]
    )
  ],
  
  dependencies: [
    .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: MOYA_VERSION)),
    .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: ALAMOFIRE_VERSION))
  ],
  
  targets: [

    .binaryTarget(
      name: "UnlimintSDK_Core",
      url: "https://github.com/parvezunlimint/TestingPackage/releases/download/1.0.0/UnlimintSDK-Core.zip",
      checksum: "2b33a0035c53af54aed4d53667a4efeb942458ad2dcb418c1a6bf61bf36fe51d"

    )
  ],
  swiftLanguageVersions: [.v5]
)
