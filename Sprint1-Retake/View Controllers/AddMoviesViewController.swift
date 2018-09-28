//
//  AddMoviesViewController.swift
//  Sprint1-Retake
//
//  Created by Linh Bouniol on 9/28/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController, MovieControllerProtocol {
    
    // MARK: - Property
    
    var movieController: MovieController?
    
    // MARK: - Outlets/Actions
    
    @IBOutlet weak var movieTextField: UITextField!
    
    @IBAction func addMovie(_ sender: Any) {
        
        guard let name = movieTextField.text, name.count > 0 else { return }
        
        movieController?.createMovie(withName: name)
    }
    
}
