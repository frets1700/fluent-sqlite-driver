// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "FluentSQLite",
    products: [
        .library(name: "FluentSQLite", targets: ["FluentSQLite"]),
    ],
    dependencies: [
        // 🌎 Utility package containing tools for byte manipulation, Codable, OS APIs, and debugging.
        .package(url: "https://github.com/vapor/core.git", from: "3.0.0"),
        
        // ✳️ Swift ORM framework (queries, models, and relations) for building NoSQL and SQL database integrations.
        .package(url: "https://github.com/frets1700/fluent.git", .branch("3.1")),

        // 📦 Dependency injection / inversion of control framework.
        .package(url: "https://github.com/vapor/service.git", from: "1.0.0"),

        // 🔵 SQLite 3 wrapper for Swift
        .package(url: "https://github.com/frets1700/sqlite-kit.git", .branch("3.1")),
    ],
    targets: [
        .target(name: "FluentSQLite", dependencies: ["Async", "FluentSQL", "Service", "SQLite"]),
        .testTarget(name: "FluentSQLiteTests", dependencies: ["FluentBenchmark", "FluentSQLite", "SQLite"]),
    ]
)
