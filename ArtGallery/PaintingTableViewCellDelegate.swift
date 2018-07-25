//
//  PaintingTableViewCellDelegate.swift
//  ArtGallery
//
//  Created by Conner on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}
