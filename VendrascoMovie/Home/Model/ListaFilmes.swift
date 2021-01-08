//
//  ListaFilmes.swift
//  VendrascoMovie
//
//  Created by Felipe Augusto Vendrasco on 07/01/21.
//  Copyright © 2021 Felipe Augusto Vendrasco. All rights reserved.
//

import Foundation

// MARK: - Welcome1
struct Welcome1 {
    let page: Int
    let results: [Result]
    let totalPages, totalResults: Int
}

// MARK: - Result
struct Result {
    let voteAverage: Double
    let title: String?
    let overview: String
    let releaseDate: String?
    let adult: Bool?
    let backdropPath: String
    let genreIDS: [Int]
    let voteCount: Int
    let originalLanguage: OriginalLanguage
    let originalTitle: String?
    let posterPath: String
    let id: Int
    let video: Bool?
    let popularity: Double
    let mediaType: MediaType
    let firstAirDate, name: String?
    let originCountry: [String]?
    let originalName: String?
}

enum MediaType {
    case movie
    case tv
}

enum OriginalLanguage {
    case en
    case ja
}
