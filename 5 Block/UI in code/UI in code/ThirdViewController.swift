//
//  ThirdViewController.swift
//  UI in code
//
//  Created by Artem Tkachenko on 12.08.2022.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var redCircle: UIView!
    @IBOutlet weak var greenCircle: UIView!
    @IBOutlet weak var yellowCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redCircle.frame = CGRect(x: 150, y: 175, width: 250, height: 250)
        redCircle.backgroundColor = .red
        redCircle.layer.cornerRadius = 125
        
        yellowCircle.frame = CGRect(x: 85, y: 325, width: 250, height: 250)
        yellowCircle.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
        yellowCircle.layer.cornerRadius = 125
        
        greenCircle.frame = CGRect(x: 20, y: 475, width: 250, height: 250)
        greenCircle.backgroundColor = .green
        greenCircle.layer.cornerRadius = 125
    }

}
