//
//  TMDBViewController.swift
//  Homework 9
//
//  Created by Artem Tkachenko on 18.09.2022.
//

import UIKit
import Alamofire
import RealmSwift

class TMDBViewController: UIViewController {
    
    @IBOutlet weak var tableVIew: UITableView!
    
    var arrayOfMovies = [Movie]()
    var page: Int = 1
    
    var isLoading = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "LoadingCell", bundle: nil)
        self.tableVIew.register(nib, forCellReuseIdentifier: "loadingcellid")
        
        tableVIew.delegate = self
        tableVIew.dataSource = self
        
            
        let movieRequest = AF.request("https://api.themoviedb.org/3/trending/movie/week?api_key=96cfbe0ba15c4721bca8030e8e32becb&page=2", method: .get)
            
        movieRequest.responseDecodable(of: TMDBResponce.self) { responce in
            do {
                self.arrayOfMovies = try responce.result.get().results
                self.page = try responce.result.get().page
                self.tableVIew.reloadData()
            } catch {
                print("error: \(error)")
            }
        }
        
    }
}

extension TMDBViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            // Return the amount of items
            return arrayOfMovies.count
        } else if section == 1 {
            // Return the Loading cell
            return 1
        } else {
            // Return nothing
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = UITableViewCell()
            cell.textLabel?.text = arrayOfMovies[indexPath.row].originalTitle
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "loadingcellid", for: indexPath) as! LoadingCell
            cell.activityIndicator.startAnimating()
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 44 // Item Cell height
        } else {
            return 55 // Loading Cell height
        }
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == arrayOfMovies.count - 1, !isLoading {
            loadMoreData()
        }
    }
    
    func loadMoreData() {
            if !self.isLoading {
                self.isLoading = true
                DispatchQueue.global().asyncAfter(deadline: .now() + .seconds(1)) { // Remove the 1-second delay if you want to load the data without waiting
                    // Download more data here
                    DispatchQueue.main.async {
                        self.tableVIew.reloadData()
                        self.isLoading = false
                    }
                }
            }
        }
    
//    func incrementCurrentPage() -> Int {
//            var number = page
//            number += 1
//            return number
//        }
    
}


