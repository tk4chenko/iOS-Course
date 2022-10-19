//
//  SecondViewController.swift
//  Homework 6
//
//  Created by Artem Tkachenko on 16.08.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var circle: UIView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        circle.layer.cornerRadius = circle.frame.size.width / 2
    }
    
    @IBAction func pressedButton(_ sender: Any) {
        
        let circleSide = circle.frame.size.height
        let frame = self.view.safeAreaLayoutGuide.layoutFrame
        
        UIView.animate(withDuration: 0.5, delay: 0) {
            self.circle.center.x += frame.width - circleSide - 24
        }
        UIView.animate(withDuration: 1, delay: 0.5) {
            self.circle.center.y += frame.height - circleSide - 24
        }
        UIView.animate(withDuration: 0.5, delay: 1.5) {
            self.circle.center.x -= frame.width - circleSide - 24
        }
        UIView.animate(withDuration: 1, delay: 2.0) {
            self.circle.center.y -= frame.height - circleSide - 24
        } completion: { compeled in
            self.circle.alpha = 0
        }
    }
}
