import Foundation
import UIKit

public typealias ImageCompletion = (UIImage?) -> Void
public typealias ImageBlock = (@escaping ImageCompletion) -> Void

public final class ImageViewerConfiguration {
  public var image: UIImage?
  public var imageView: UIImageView?
  public var imageBlock: ImageBlock?
  public var deleteImage: UIImage?
  public var deleteText: String?
  public var deleteAttributes: [NSAttributedStringKey: Any]?
  public var deleteHandler: (() -> Void)?
  
  public typealias ConfigurationClosure = (ImageViewerConfiguration) -> ()
  
  public init(configurationClosure: ConfigurationClosure) {
    configurationClosure(self)
  }
}
