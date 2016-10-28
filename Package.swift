import PackageDescription

let package = Package(
    name: "Vapor",
    dependencies: [
        .Package(url: "https://github.com/Zewo/String.git", majorVersion: 0, minor: 4),
        .Package(url: "https://github.com/vladrusu-3pillar/JSON-fork.git", majorVersion: 0, minor: 4),
        .Package(url: "https://github.com/ketzusaka/Hummingbird.git", majorVersion: 1, minor: 1),
        .Package(url: "https://github.com/PlanTeam/CryptoKitten.git", majorVersion: 0, minor: 1)
    ],
    exclude: [
        "XcodeProject",
        "Release"
    ],
    targets: [
        Target(
            name: "Vapor",
            dependencies: [
                .Target(name: "libc")
            ]
        ),
        Target(
            name: "VaporDev",
            dependencies: [
                .Target(name: "Vapor")
            ]
        )
    ]
)
