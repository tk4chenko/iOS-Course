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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "TMDbTableViewCell", bundle: nil)
        self.moviesTableView.register(nib, forCellReuseIdentifier: "TMDbTableViewCell")
        viewModel.loadingTrendingMovies {
            self.moviesTableView.reloadData()
        }
        viewModel.loadingGenres {
            self.moviesTableView.reloadData()
        }
        
    }
    
}

extension MovieAreTrendingViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.viewModel.arrayOfMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TMDbTableViewCell") as! TMDbTableViewCell
        
        var genreOfMovie = ""
        
        for id in viewModel.arrayOfMovies[indexPath.row].genreIDS {
            for genre in viewModel.arrayOfGenres {
                if id == genre.id {
                    if id == viewModel.arrayOfMovies[indexPath.row].genreIDS.last {
                        genreOfMovie += genre.name + " "
                    } else {
                    genreOfMovie += genre.name + ", "
                    }
                }
            }
        }
        
        cell.genreLabel.text = genreOfMovie
        cell.configure(movie: viewModel.arrayOfMovies[indexPath.row])
        return cell
    }
}
