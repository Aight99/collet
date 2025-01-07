import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
  name: "Collet",
  options: .options(
    textSettings: .textSettings(
      usesTabs: false,
      indentWidth: 2,
      tabWidth: 2,
      wrapsLines: true
    )
  ),
  targets: .colletTargets,
  fileHeaderTemplate: .annual
)

private extension [Target] {
  static var colletTargets: Self {
    [
      .target(
        name: "Collet",
        destinations: .iOS,
        product: .app,
        bundleId: "io.tuist.Collet",
        infoPlist: .extendingDefault(
          with: [
            "UILaunchScreen": [
              "UIColorName": "",
              "UIImageName": "",
            ],
          ]
        ),
        sources: ["Collet/Sources/**"],
        resources: ["Collet/Resources/**"],
        dependencies: []
      ),
      .target(
        name: "ColletTests",
        destinations: .iOS,
        product: .unitTests,
        bundleId: "io.tuist.ColletTests",
        infoPlist: .default,
        sources: ["Collet/Tests/**"],
        resources: [],
        dependencies: [.target(name: "Collet")]
      ),
    ]
  }
}
