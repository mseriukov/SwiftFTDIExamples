// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "ftdi_bitbang_blink",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/mseriukov/SwiftFTDI.git", from: "0.2.0"),
    ],
    targets: [
        .executableTarget(
            name: "ftdi_bitbang_blink",
            dependencies: [
                .product(name: "SwiftFTDI", package: "SwiftFTDI")
            ],
            path: "Sources"
        )
    ]
)
