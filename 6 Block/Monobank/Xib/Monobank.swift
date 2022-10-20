//
//  MonoInStroryboardViewController.swift
//  Xib
//
//  Created by Artem Tkachenko on 19.08.2022.
//

import UIKit

class Monobank: UIViewController, CustomViewDelegate {
    
    @IBOutlet weak var centralView: CustomView!
    @IBOutlet weak var rightView: CustomView!
    @IBOutlet weak var leftView: CustomView!
    @IBOutlet weak var middleView: UIView!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftView.delegate = self
        rightView.delegate = self
        centralView.delegate = self
        
        leftView.configure(text: "Купівля частинами", image: "pawprint", circleColor: .purple, item: .credit)
        
        rightView.configure(text: "Архів", image: "checkmark.rectangle.portrait", circleColor: .gray, item: .archive)
        
        centralView.configure(text: "Розстрочка на карту", image: "creditcard", circleColor: .systemBlue, item: .installment)
        middleView.backgroundColor = .systemBlue
    }
    
    func customViewPressed(item: Item) {
        switch item {
        case .archive: print("Архів")
        case .credit: print("Кредит")
        case .installment: print("Розстрочка")
        }
    }
}

