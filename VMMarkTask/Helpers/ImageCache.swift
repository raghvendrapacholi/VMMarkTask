//
//  ImageCache.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 12/03/24.
//
import UIKit

// MARK: - ImageCache

class ImageCache {
    // MARK: - Properties
    
    var cache = NSCache<NSString, UIImage>()

    func get(forKey: String) -> UIImage? {
        return cache.object(forKey: NSString(string: forKey))
    }

    func set(forKey: String, image: UIImage) {
        cache.setObject(image, forKey: NSString(string: forKey))
    }
}

extension ImageCache {
    private static var imageCache = ImageCache()
    static func getImageCache() -> ImageCache {
        return imageCache
    }
}
