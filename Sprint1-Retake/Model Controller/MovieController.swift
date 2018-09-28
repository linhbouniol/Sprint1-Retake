//
//  MovieController.swift
//  Sprint1-Retake
//
//  Created by Linh Bouniol on 9/28/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import Foundation

class MovieController {
    
    // MARK: - Property
    
    var movies: [Movie] = []
    
    // MARK: - Methods
    
    func createMovie(withName name: String, isSeen: Bool = false) {
        let movie = Movie(name: name, isSeen: isSeen)
        movies.append(movie)
    }
    
    func delete(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        movies.remove(at: index)
    }
    
    // toggle movie
    func toggleIsSeen(for movie: Movie) {
        movie.isSeen = !movie.isSeen
        
        // Equatable, model needs to be a class with func ==()
        
        // didn't work with struct
            // need to get the index of the movie and modify it in the array directly
//        guard let index = movies.index(of: movie) else { return }
//        movies[index].isSeen = !movie.isSeen
        
    }
}
