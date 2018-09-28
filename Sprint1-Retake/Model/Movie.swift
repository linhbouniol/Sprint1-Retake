//
//  Movie.swift
//  Sprint1-Retake
//
//  Created by Linh Bouniol on 9/28/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import Foundation

class Movie: Equatable {
    
    var name: String
    var isSeen: Bool = false
    
    init(name: String, isSeen: Bool = false) {
        self.name = name
        self.isSeen = isSeen
    }
    
    static func ==(lhs: Movie, rhs: Movie) -> Bool {
        return lhs == rhs
    }
}
