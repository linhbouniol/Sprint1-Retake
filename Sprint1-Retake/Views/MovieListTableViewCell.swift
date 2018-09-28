//
//  MovieListTableViewCell.swift
//  Sprint1-Retake
//
//  Created by Linh Bouniol on 9/28/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

protocol MovieListTableViewCellDelegate: class {
    func isSeenButtonWasTapped(for cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {
    
    // MARK: - Property
    
    weak var delegate: MovieListTableViewCellDelegate?
    
    // MARK: - Outlets/Actions

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var isSeenButton: UIButton!
    
    @IBAction func isSeen(_ sender: Any) {
        delegate?.isSeenButtonWasTapped(for: self)
    }
}
