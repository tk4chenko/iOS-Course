//
//  TMDbMovieListData.swift
//  Homework 8
//
//  Created by Artem Tkachenko on 05.09.2022.
//

import Foundation

struct Genres: Codable {
    let genres: [Genre]
}

struct Genre: Codable {
    let id: Int
    let name: String
}
