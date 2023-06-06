//
//  DataProvider.swift
//  TestCache
//
//  Created by Artem Tkachenko on 25.04.2023.
//

import UIKit

class DataProvider {
    
    private var imageCache = NSCache<NSString, UIImage>()
    
    func load(urlString: String, completion: @escaping((UIImage)->Void)) {
        print(imageCache.object(forKey: urlString as NSString) ?? "no image")
        if let cachedImage = imageCache.object(forKey: urlString as NSString) {
            completion(cachedImage)
            return
        }
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad)
        let dataRequest = URLSession.shared.dataTask(with: request) { data, responce, error in
            if let data, let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.imageCache.setObject(image, forKey: urlString as NSString)
                    completion(image)
                }
            } else if let error {
                print(error.localizedDescription)
            }
        }
        dataRequest.resume()
    }
}
