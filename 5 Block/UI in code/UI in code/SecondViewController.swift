//
//  SecondViewController.swift
//  UI in code
//
//  Created by Artem Tkachenko on 12.08.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var redCircle: UIView!
    @IBOutlet weak var yellowCircle: UIView!
    @IBOutlet weak var greenCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redCircle.frame = CGRect(x: 85, y: 75, width: 250, height: 250)
        redCircle.backgroundColor = .red
        redCircle.layer.cornerRadius = 125
        
        yellowCircle.frame = CGRect(x: 85, y: 325, width: 250, height: 250)
        yellowCircle.backgroundColor = .yellow
        yellowCircle.layer.cornerRadius = 125
        
        greenCircle.frame = CGRect(x: 85, y: 575, width: 250, height: 250)
        greenCircle.backgroundColor = .green
        greenCircle.layer.cornerRadius = 125
        
    }
    
}
