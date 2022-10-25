//
//  ViewController.swift
//  Homework 8
//
//  Created by Artem Tkachenko on 03.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = Bundle.main.url(forResource: "RawData", withExtension: "json")
        else {
            return
        }
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode(Company.self, from: data)
            print(jsonData.listOfData[0].modelNumber)
            print(jsonData.listOfData[0].countries.last!)
            print(jsonData.listOfData.first!.price.regions.first!.name)
            print(jsonData.listOfData.first!.price.regions.last!.price)
        }
        catch {
            print("error: \(error)")
        }
    }


}

