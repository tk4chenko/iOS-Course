//
//  SomeView.swift
//  Xib
//
//  Created by Artem Tkachenko on 19.08.2022.
//

import UIKit

class SomeView: UIView {

    
     Only override draw() if you perform custom drawing.
     An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
         Drawing code
    }

}
