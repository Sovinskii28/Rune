import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 11.0, macOS 10.13, tvOS 11.0, *)
extension ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 11.0, macOS 10.7, tvOS 11.0, *)
extension ImageResource {

    /// The "1ru" asset catalog image resource.
    static let _1Ru = ImageResource(name: "1ru", bundle: resourceBundle)

    /// The "2ru" asset catalog image resource.
    static let _2Ru = ImageResource(name: "2ru", bundle: resourceBundle)

    /// The "3ru" asset catalog image resource.
    static let _3Ru = ImageResource(name: "3ru", bundle: resourceBundle)

    /// The "4ru" asset catalog image resource.
    static let _4Ru = ImageResource(name: "4ru", bundle: resourceBundle)

    /// The "5ru" asset catalog image resource.
    static let _5Ru = ImageResource(name: "5ru", bundle: resourceBundle)

    /// The "6ru" asset catalog image resource.
    static let _6Ru = ImageResource(name: "6ru", bundle: resourceBundle)

    /// The "backround1" asset catalog image resource.
    static let backround1 = ImageResource(name: "backround1", bundle: resourceBundle)

    /// The "head" asset catalog image resource.
    static let head = ImageResource(name: "head", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 10.13, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color {

}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 10.7, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "1ru" asset catalog image.
    static var _1Ru: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._1Ru)
#else
        .init()
#endif
    }

    /// The "2ru" asset catalog image.
    static var _2Ru: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._2Ru)
#else
        .init()
#endif
    }

    /// The "3ru" asset catalog image.
    static var _3Ru: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._3Ru)
#else
        .init()
#endif
    }

    /// The "4ru" asset catalog image.
    static var _4Ru: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._4Ru)
#else
        .init()
#endif
    }

    /// The "5ru" asset catalog image.
    static var _5Ru: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._5Ru)
#else
        .init()
#endif
    }

    /// The "6ru" asset catalog image.
    static var _6Ru: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._6Ru)
#else
        .init()
#endif
    }

    /// The "backround1" asset catalog image.
    static var backround1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .backround1)
#else
        .init()
#endif
    }

    /// The "head" asset catalog image.
    static var head: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .head)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "1ru" asset catalog image.
    static var _1Ru: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._1Ru)
#else
        .init()
#endif
    }

    /// The "2ru" asset catalog image.
    static var _2Ru: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._2Ru)
#else
        .init()
#endif
    }

    /// The "3ru" asset catalog image.
    static var _3Ru: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._3Ru)
#else
        .init()
#endif
    }

    /// The "4ru" asset catalog image.
    static var _4Ru: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._4Ru)
#else
        .init()
#endif
    }

    /// The "5ru" asset catalog image.
    static var _5Ru: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._5Ru)
#else
        .init()
#endif
    }

    /// The "6ru" asset catalog image.
    static var _6Ru: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._6Ru)
#else
        .init()
#endif
    }

    /// The "backround1" asset catalog image.
    static var backround1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .backround1)
#else
        .init()
#endif
    }

    /// The "head" asset catalog image.
    static var head: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .head)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 11.0, macOS 10.13, tvOS 11.0, *)
@available(watchOS, unavailable)
extension ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 11.0, macOS 10.7, tvOS 11.0, *)
@available(watchOS, unavailable)
extension ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 10.7, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

// MARK: - Backwards Deployment Support -

/// A color resource.
struct ColorResource: Swift.Hashable, Swift.Sendable {

    /// An asset catalog color resource name.
    fileprivate let name: Swift.String

    /// An asset catalog color resource bundle.
    fileprivate let bundle: Foundation.Bundle

    /// Initialize a `ColorResource` with `name` and `bundle`.
    init(name: Swift.String, bundle: Foundation.Bundle) {
        self.name = name
        self.bundle = bundle
    }

}

/// An image resource.
struct ImageResource: Swift.Hashable, Swift.Sendable {

    /// An asset catalog image resource name.
    fileprivate let name: Swift.String

    /// An asset catalog image resource bundle.
    fileprivate let bundle: Foundation.Bundle

    /// Initialize an `ImageResource` with `name` and `bundle`.
    init(name: Swift.String, bundle: Foundation.Bundle) {
        self.name = name
        self.bundle = bundle
    }

}

#if canImport(AppKit)
@available(macOS 10.13, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// Initialize a `NSColor` with a color resource.
    convenience init(resource: ColorResource) {
        self.init(named: NSColor.Name(resource.name), bundle: resource.bundle)!
    }

}

protocol _ACResourceInitProtocol {}
extension AppKit.NSImage: _ACResourceInitProtocol {}

@available(macOS 10.7, *)
@available(macCatalyst, unavailable)
extension _ACResourceInitProtocol {

    /// Initialize a `NSImage` with an image resource.
    init(resource: ImageResource) {
        self = resource.bundle.image(forResource: NSImage.Name(resource.name))! as! Self
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// Initialize a `UIColor` with a color resource.
    convenience init(resource: ColorResource) {
#if !os(watchOS)
        self.init(named: resource.name, in: resource.bundle, compatibleWith: nil)!
#else
        self.init()
#endif
    }

}

@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// Initialize a `UIImage` with an image resource.
    convenience init(resource: ImageResource) {
#if !os(watchOS)
        self.init(named: resource.name, in: resource.bundle, compatibleWith: nil)!
#else
        self.init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color {

    /// Initialize a `Color` with a color resource.
    init(_ resource: ColorResource) {
        self.init(resource.name, bundle: resource.bundle)
    }

}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Image {

    /// Initialize an `Image` with an image resource.
    init(_ resource: ImageResource) {
        self.init(resource.name, bundle: resource.bundle)
    }

}
#endif