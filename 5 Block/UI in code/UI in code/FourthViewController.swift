//
//  FourthViewController.swift
//  UI in code
//
//  Created by Artem Tkachenko on 12.08.2022.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var redCircle: UIView!
    @IBOutlet weak var blueCircle: UIView!
    @IBOutlet weak var greenCircle: UIView!
    @IBOutlet weak var yellowCircle: UIView!
    @IBOutlet weak var mainCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainCircle.frame.size.width = 414
        mainCircle.frame.size.height = 414
        mainCircle.backgroundColor = .white
        mainCircle.layer.cornerRadius = mainCircle.frame.width * 0.5
        mainCircle.center = view.center
        mainCircle.clipsToBounds = true
        view.addSubview(mainCircle)
        
        redCircle.frame = CGRect(x: -30, y: -30, width: 275, height: 275)
        redCircle.backgroundColor = .red
        redCircle.layer.cornerRadius = redCircle.frame.width * 0.5
        mainCircle.addSubview(redCircle)
        
        blueCircle.frame = CGRect(x: -30, y: 180, width: 275, height: 275)
        blueCircle.backgroundColor = .blue
        blueCircle.layer.cornerRadius = blueCircle.frame.width * 0.5
        mainCircle.addSubview(blueCircle)
        
        yellowCircle.frame = CGRect(x: 180, y: -30, width: 275, height: 275)
        yellowCircle.backgroundColor = .yellow
        yellowCircle.layer.cornerRadius = yellowCircle.frame.width * 0.5
        mainCircle.addSubview(yellowCircle)

        greenCircle.frame = CGRect(x: 180, y: 180, width: 275, height: 275)
        greenCircle.backgroundColor = .green
        greenCircle.layer.cornerRadius = greenCircle.frame.width * 0.5
        mainCircle.addSubview(greenCircle)
    }
}
