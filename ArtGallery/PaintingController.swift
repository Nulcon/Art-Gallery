//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Conner on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    init() {
        loadPaintingsFromAssets()
    }
    
    func loadPaintingsFromAssets() {
        for n in 1...12 {
            let currentImageAsset = "Image\(n)"
            guard let imageWithAsset = UIImage(named: currentImageAsset) else { return }
            let painting = Painting(isLiked: false, image: imageWithAsset)
            paintings.append(painting)
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        painting.isLiked = !(painting.isLiked)
    }
    
    var paintings: [Painting] = []
}


