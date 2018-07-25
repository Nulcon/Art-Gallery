//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Conner on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        guard let index = tableView.indexPath(for: cell) else { return }
        let paintingTapped = paintingController.paintings[index.row]
        paintingController.toggleIsLiked(for: paintingTapped)
        tableView.reloadRows(at: [index], with: .fade)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath)
        guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
        
        let painting = paintingController.paintings[indexPath.row]
        paintingCell.painting = painting
        paintingCell.delegate = self
        
        return paintingCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = 405
    }

    @IBOutlet var tableView: UITableView!
    let paintingController = PaintingController()
    
}
