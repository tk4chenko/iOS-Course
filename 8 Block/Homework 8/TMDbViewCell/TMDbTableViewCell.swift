//
//  TMDbTableViewCell.swift
//  Homework 8
//
//  Created by Artem Tkachenko on 06.09.2022.
//

import UIKit
import SDWebImage

class TMDbTableViewCell: UITableViewCell {
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    
    func configure(movie: Result) {
        releaseDateLabel.text = "User score: \(Int(movie.voteAverage * 10))%"
        movieNameLabel.text = movie.originalTitle
        descriptionLabel.text = movie.overview
        
        if let url = URL(string: "https://image.tmdb.org/t/p/original" + movie.posterPath) {
        posterImageView.sd_setImage(with: url, completed: nil)
        }
    }
}
