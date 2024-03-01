//
//  Poster.swift
//  Project2
//
//  Created by Jonathan Baires on 2/29/24.
//

import Foundation

struct Poster: Decodable {
    let poster_path: URL
}

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}
