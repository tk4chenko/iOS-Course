//
//  CustomTopView.swift
//  Xib
//
//  Created by Artem Tkachenko on 19.08.2022.
//

import Foundation
import UIKit

class CustomTopView: UIView {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var currencyBlock: UIView!
    
    override init(frame: CGRect) {
          super.init(frame: frame)
          commonInit()
      }
      
      required init?(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)
          commonInit()
      }
      
      func commonInit() {
          Bundle.main.loadNibNamed("CustomTopView", owner: self, options: nil)
          contentView.fixInView(self)
          currencyBlock.layer.cornerRadius = 15
      }
}
