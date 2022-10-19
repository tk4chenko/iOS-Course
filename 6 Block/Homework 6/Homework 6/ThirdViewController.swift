//
//  ThirdViewController.swift
//  Homework 6
//
//  Created by Artem Tkachenko on 16.08.2022.
//

import UIKit
import Lottie

class ThirdViewController: UIViewController {
    

    @IBOutlet weak var koalaView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
    }
    
    @IBAction func pressedButton(_ sender: Any) {
        koalaView.play()
    }
}
