//
//  MovieListTableViewController.swift
//  Sprint1-Retake
//
//  Created by Linh Bouniol on 9/28/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController, MovieControllerProtocol, UITableViewDataSource, MovieListTableViewCellDelegate {
    
    // MARK: - Property
    
    var movieController: MovieController?
    
    // MARK: - Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // MARK: - MovieListTableVieCellDelegate
    
    func isSeenButtonWasTapped(for cell: MovieListTableViewCell) {
        
        // need outlet for table view
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        guard let movie = movieController?.movies[indexPath.row] else { return }
        
        movieController?.toggleIsSeen(for: movie)
        
        // reload table view to show toggle, better to reload just the row that was modified then the entire table view
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieListTableViewCell
        
        guard let movie = movieController?.movies[indexPath.row] else { return cell }
        
        cell.movieLabel.text = movie.name
        
        // change the button label
        if movie.isSeen {
            cell.isSeenButton.setTitle("Seen", for: .normal)
        } else {
            cell.isSeenButton.setTitle("Not Seen", for: .normal)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let movie = movieController?.movies[indexPath.row] else { return }
            
            movieController?.delete(movie: movie)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
