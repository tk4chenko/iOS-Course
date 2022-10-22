//
//  SimpleDetailsViewController.swift
//  Simple UITableView
//
//  Created by Artem Tkachenko on 26.08.2022.
//

import UIKit

class SimpleDetailsViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!

    var index: String?
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomLabel.text = name
        topLabel.text = index
    }

}
