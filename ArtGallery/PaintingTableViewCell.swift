//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Conner on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    func updateViews() {
        guard let painting = painting else { return }
        paintingImage.image = painting.image
    }
    
    @IBAction func toggleLikeStatus(_ sender: Any) {
        
    }
    
    @IBOutlet weak var likeOrDislikeButton: UIButton!
    @IBOutlet var paintingImage: UIImageView!
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
}
