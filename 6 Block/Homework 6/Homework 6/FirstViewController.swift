//
//  FirstViewController.swift
//  Homework 6
//
//  Created by Artem Tkachenko on 16.08.2022.
//

import UIKit
import Lottie

class FirstViewController: UIViewController {
    
    @IBOutlet weak var ball: UIView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        ball.layer.cornerRadius = 60
        button.center.x = view.center.x
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ball.frame = CGRect(x: view.frame.midX - ball.frame.width / 2, y: view.frame.maxY - 220, width: 120, height: 120)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {

        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 4, initialSpringVelocity: 5, options: [.repeat, .autoreverse]) {
            self.ball.center = self.view.center
        }
        
    }
}


