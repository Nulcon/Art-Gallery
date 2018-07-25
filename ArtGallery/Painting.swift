//
//  Painting.swift
//  ArtGallery
//
//  Created by Conner on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage!
    var isLiked: Bool = false
    
    init(isLiked: Bool, image: UIImage) {
        self.isLiked = isLiked
        self.image = image
    }
}


