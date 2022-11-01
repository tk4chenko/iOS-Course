//
//  TMDbViewController.swift
//  Homework 8
//
//  Created by Artem Tkachenko on 05.09.2022.
//

import UIKit
import Alamofire

class MovieAreTrendingViewController: UIViewController {
    
    @IBOutlet weak var moviesTableView: UITableView!
    
    var viewModel = ViewModelMainVC()
    
    var currentPage = 1
    let totalPages = 10
    var movies = [Result]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "TMDbTableViewCell", bundle: nil)
        self.moviesTableView.register(nib, forCellReuseIdentifier: "TMDbTableViewCell")
        
        viewModel.loadingTrendingMovies(page: currentPage) { movie in
            self.movies = movie
            self.moviesTableView.reloadData()
        }
        
        viewModel.loadingGenres {
            self.moviesTableView.reloadData()
        }
        
    }
    
}

extension MovieAreTrendingViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if currentPage < totalPages && indexPath.row == movies.count - 1 {
            currentPage += 1
            viewModel.loadingTrendingMovies(page: currentPage) { movies in
                self.movies.append(contentsOf: movies)
                DispatchQueue.main.async {
                    self.moviesTableView.reloadData()
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TMDbTableViewCell") as! TMDbTableViewCell
        
        var genreOfMovie = ""
        
        for id in movies[indexPath.row].genreIDS {
            for genre in viewModel.arrayOfGenres {
                if id == genre.id {
                    if id == movies[indexPath.row].genreIDS.last {
                        genreOfMovie += genre.name + " "
                    } else {
                    genreOfMovie += genre.name + ", "
                    }
                }
            }
        }
        
        cell.genreLabel.text = genreOfMovie
        cell.configure(movie: movies[indexPath.row])
        return cell
    }
}
