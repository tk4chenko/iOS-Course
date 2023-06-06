//
//  CustomView.swift
//  Xib
//
//  Created by Artem Tkachenko on 18.08.2022.
//

import Foundation
import UIKit


protocol CustomViewDelegate: NSObject {
    func customViewPressed(item: Item)
}

enum Item {
    case credit
    case archive
    case installment
}

class CustomView: UIView {
    
    weak var delegate: CustomViewDelegate?
    var item: Item?
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var circle: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)
        contentView.fixInView(self)
    }
    
    func configure(text: String, image: String, circleColor: UIColor, item: Item) {
        
        circle.layer.cornerRadius = 25
        circle.backgroundColor = circleColor
        
        imageView.tintColor = .white
        imageView.image = UIImage(systemName: image)
        
        self.item = item
        
        textLabel.text = text
    }
    
    @IBAction func viewPressed(_ sender: Any) {
        guard let mainItem = self.item else { return }
        delegate?.customViewPressed(item: mainItem)
    }
}

