import ProjectDescription

let tuist = Tuist(
  project: .tuist(
    compatibleXcodeVersions: .upToNextMajor("16.0"),
    swiftVersion: "6.0"
  )
)
