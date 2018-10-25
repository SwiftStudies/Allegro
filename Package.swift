// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Allegro",
    
    products: [
        .library(
            name: "Allegro",
            targets: ["Allegro"]),
    ],
    
    dependencies: [
    ],
    
    targets: [
        .target(
            name: "Allegro",
            dependencies: ["CAllegro"]),
        .systemLibrary(
            name: "CAllegro",
            path: "Sources/Callegro",
            pkgConfig: "allegro-5",
            providers: [
                .brew(["allegro"]),
                .apt(["allegro"]),
            ]
        ),
    ]
)
