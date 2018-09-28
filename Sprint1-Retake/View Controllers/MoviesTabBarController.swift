//
//  MovieListTabBarController.swift
//  Sprint1-Retake
//
//  Created by Linh Bouniol on 9/28/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class MoviesTabBarController: UITabBarController {
    
    // MARK: - Property
    
    let movieController = MovieController()
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        passMovieControllerToChildViewControllers()
    }
    
    // MARK: - Method
    
    func passMovieControllerToChildViewControllers() {
        for childVC in children {
            if let vc = childVC as? MovieControllerProtocol {
                vc.movieController = movieController
            }
        }
    }
}
