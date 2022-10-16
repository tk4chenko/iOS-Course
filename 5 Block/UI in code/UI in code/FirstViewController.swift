//
//  FirstViewController.swift
//  UI in code
//
//  Created by Artem Tkachenko on 12.08.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    var someView = UIView()
    
    @IBOutlet weak var greenCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(someView)
        someView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        someView.backgroundColor = .red
        
        greenCircle.frame.size.width = 250
        greenCircle.frame.size.height = 250
        greenCircle.center = view.center
        greenCircle.backgroundColor = .green
        greenCircle.layer.cornerRadius = 125
        
    }

}
