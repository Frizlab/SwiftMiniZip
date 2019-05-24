// swift-tools-version:5.0
import PackageDescription


let package = Package(
	name: "MiniZip",
	products: [.library(name: "MiniZip", targets: ["MiniZip"])],
	dependencies: [],
	targets: [
		.systemLibrary(name: "CMiniZip", pkgConfig: "minizip", providers: [.apt(["minizip"]), .brew(["minizip"])]),

		.target(name: "MiniZip", dependencies: ["CMiniZip"]),
		.testTarget(name: "MiniZipTests", dependencies: ["MiniZip"])
	]
)
