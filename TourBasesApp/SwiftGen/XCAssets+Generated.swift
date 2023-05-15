// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal static let cyan01 = ColorAsset(name: "cyan-01")
  internal static let cyan02 = ColorAsset(name: "cyan-02")
  internal static let cyan03 = ColorAsset(name: "cyan-03")
  internal static let cyan04 = ColorAsset(name: "cyan-04")
  internal static let cyan05 = ColorAsset(name: "cyan-05")
  internal static let cyan06 = ColorAsset(name: "cyan-06")
  internal static let cyan07 = ColorAsset(name: "cyan-07")
  internal static let cyan08 = ColorAsset(name: "cyan-08")
  internal static let cyan09 = ColorAsset(name: "cyan-09")
  internal static let cyan10 = ColorAsset(name: "cyan-10")
  internal static let danger01 = ColorAsset(name: "danger-01")
  internal static let danger02 = ColorAsset(name: "danger-02")
  internal static let danger03 = ColorAsset(name: "danger-03")
  internal static let danger04 = ColorAsset(name: "danger-04")
  internal static let danger05 = ColorAsset(name: "danger-05")
  internal static let danger06 = ColorAsset(name: "danger-06")
  internal static let danger07 = ColorAsset(name: "danger-07")
  internal static let danger08 = ColorAsset(name: "danger-08")
  internal static let danger09 = ColorAsset(name: "danger-09")
  internal static let danger10 = ColorAsset(name: "danger-10")
  internal static let gray01 = ColorAsset(name: "gray-01")
  internal static let gray02 = ColorAsset(name: "gray-02")
  internal static let gray03 = ColorAsset(name: "gray-03")
  internal static let gray04 = ColorAsset(name: "gray-04")
  internal static let gray05 = ColorAsset(name: "gray-05")
  internal static let gray06 = ColorAsset(name: "gray-06")
  internal static let gray07 = ColorAsset(name: "gray-07")
  internal static let gray08 = ColorAsset(name: "gray-08")
  internal static let gray09 = ColorAsset(name: "gray-09")
  internal static let gray10 = ColorAsset(name: "gray-10")
  internal static let gray11 = ColorAsset(name: "gray-11")
  internal static let gray12 = ColorAsset(name: "gray-12")
  internal static let gray13 = ColorAsset(name: "gray-13")
  internal static let gray14 = ColorAsset(name: "gray-14")
  internal static let gray15 = ColorAsset(name: "gray-15")
  internal static let gray16 = ColorAsset(name: "gray-16")
  internal static let gray17 = ColorAsset(name: "gray-17")
  internal static let gray18 = ColorAsset(name: "gray-18")
  internal static let gray19 = ColorAsset(name: "gray-19")
  internal static let gray20 = ColorAsset(name: "gray-20")
  internal static let info01 = ColorAsset(name: "info-01")
  internal static let info02 = ColorAsset(name: "info-02")
  internal static let info03 = ColorAsset(name: "info-03")
  internal static let info04 = ColorAsset(name: "info-04")
  internal static let info05 = ColorAsset(name: "info-05")
  internal static let info06 = ColorAsset(name: "info-06")
  internal static let info07 = ColorAsset(name: "info-07")
  internal static let info08 = ColorAsset(name: "info-08")
  internal static let info09 = ColorAsset(name: "info-09")
  internal static let info10 = ColorAsset(name: "info-10")
  internal static let primary01 = ColorAsset(name: "primary-01")
  internal static let primary02 = ColorAsset(name: "primary-02")
  internal static let primary03 = ColorAsset(name: "primary-03")
  internal static let primary04 = ColorAsset(name: "primary-04")
  internal static let primary05 = ColorAsset(name: "primary-05")
  internal static let primary06 = ColorAsset(name: "primary-06")
  internal static let primary07 = ColorAsset(name: "primary-07")
  internal static let primary08 = ColorAsset(name: "primary-08")
  internal static let primary09 = ColorAsset(name: "primary-09")
  internal static let primary10 = ColorAsset(name: "primary-10")
  internal static let purple01 = ColorAsset(name: "purple-01")
  internal static let purple02 = ColorAsset(name: "purple-02")
  internal static let purple03 = ColorAsset(name: "purple-03")
  internal static let purple04 = ColorAsset(name: "purple-04")
  internal static let purple05 = ColorAsset(name: "purple-05")
  internal static let purple06 = ColorAsset(name: "purple-06")
  internal static let purple07 = ColorAsset(name: "purple-07")
  internal static let purple08 = ColorAsset(name: "purple-08")
  internal static let purple09 = ColorAsset(name: "purple-09")
  internal static let purple10 = ColorAsset(name: "purple-10")
  internal static let success01 = ColorAsset(name: "success-01")
  internal static let success02 = ColorAsset(name: "success-02")
  internal static let success03 = ColorAsset(name: "success-03")
  internal static let success04 = ColorAsset(name: "success-04")
  internal static let success05 = ColorAsset(name: "success-05")
  internal static let success06 = ColorAsset(name: "success-06")
  internal static let success07 = ColorAsset(name: "success-07")
  internal static let success08 = ColorAsset(name: "success-08")
  internal static let success09 = ColorAsset(name: "success-09")
  internal static let success10 = ColorAsset(name: "success-10")
  internal static let violet01 = ColorAsset(name: "violet-01")
  internal static let violet02 = ColorAsset(name: "violet-02")
  internal static let violet03 = ColorAsset(name: "violet-03")
  internal static let violet04 = ColorAsset(name: "violet-04")
  internal static let violet05 = ColorAsset(name: "violet-05")
  internal static let violet06 = ColorAsset(name: "violet-06")
  internal static let violet07 = ColorAsset(name: "violet-07")
  internal static let violet08 = ColorAsset(name: "violet-08")
  internal static let violet09 = ColorAsset(name: "violet-09")
  internal static let violet10 = ColorAsset(name: "violet-10")
  internal static let warning01 = ColorAsset(name: "warning-01")
  internal static let warning02 = ColorAsset(name: "warning-02")
  internal static let warning03 = ColorAsset(name: "warning-03")
  internal static let warning04 = ColorAsset(name: "warning-04")
  internal static let warning05 = ColorAsset(name: "warning-05")
  internal static let warning06 = ColorAsset(name: "warning-06")
  internal static let warning07 = ColorAsset(name: "warning-07")
  internal static let warning08 = ColorAsset(name: "warning-08")
  internal static let warning09 = ColorAsset(name: "warning-09")
  internal static let warning10 = ColorAsset(name: "warning-10")
  internal static let yellow01 = ColorAsset(name: "yellow-01")
  internal static let yellow02 = ColorAsset(name: "yellow-02")
  internal static let yellow03 = ColorAsset(name: "yellow-03")
  internal static let yellow04 = ColorAsset(name: "yellow-04")
  internal static let yellow05 = ColorAsset(name: "yellow-05")
  internal static let yellow06 = ColorAsset(name: "yellow-06")
  internal static let yellow07 = ColorAsset(name: "yellow-07")
  internal static let yellow08 = ColorAsset(name: "yellow-08")
  internal static let yellow09 = ColorAsset(name: "yellow-09")
  internal static let yellow10 = ColorAsset(name: "yellow-10")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if os(iOS) || os(tvOS)
  @available(iOS 11.0, tvOS 11.0, *)
  internal func color(compatibleWith traitCollection: UITraitCollection) -> Color {
    let bundle = BundleToken.bundle
    guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal private(set) lazy var swiftUIColor: SwiftUI.Color = {
    SwiftUI.Color(asset: self)
  }()
  #endif

public init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Color {
  init(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
