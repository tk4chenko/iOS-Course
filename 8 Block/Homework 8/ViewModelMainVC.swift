//
//  ViewModelMainVC.swift
//  Homework 8
//
//  Created by Artem Tkachenko on 03.10.2022.
//

import Foundation
import Alamofire

class ViewModelMainVC {
    
    var arrayOfMovies: [Result] = []
    var arrayOfGenres: [Genre] = []
    
    
    func loadingTrendingMovies(completion: @escaping(()->())) {
        let movieRequest = AF.request("https://api.themoviedb.org/3/discover/movie?api_key=b3187cf196a7681dee8805cdcec0d6ba&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_genres=878&with_watch_monetization_types=flatrate", method: .get)
        
        movieRequest.responseDecodable(of: Welcome.self) { responce in
            do {
                self.arrayOfMovies = try responce.result.get().results
            } catch {
                print("error: \(error)")
            }
            completion()
            
        }
    }
    
    func loadingGenres(completion: @escaping(()->())) {
        let genresRequest = AF.request("https://api.themoviedb.org/3/genre/movie/list?api_key=e1988c5fd4dfd50566522f6ff287a95b&language=en-US", method: .get)
        
        genresRequest.responseDecodable(of: Genres.self) { response in
            do {
                self.arrayOfGenres = try response.result.get().genres
            }
            catch {
                print("error: \(error)")
            }
            completion()
        }
    }
    
}
