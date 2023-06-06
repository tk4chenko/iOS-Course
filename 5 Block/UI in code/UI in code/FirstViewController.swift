//
//  FirstViewController.swift
//  UI in code
//
//  Created by Artem Tkachenko on 12.08.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    let myTableView: UITableView = {
       let view = UITableView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var someView = UIView()
    
    let customView: CustomView = {
        let view = CustomView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
//    let playButton: UIButton = {
//        let button = UIButton()
//        var config = UIButton.Configuration.plain()
//        config.buttonSize = .large
////        button.configuration = config
//        button.tintColor = .black
//        button.setImage(UIImage(systemName: "play.fill"), for: .normal)
//        button.setImage(UIImage(systemName: "pause.fill"), for: .selected)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
    
    @IBOutlet weak var greenCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTableView.delegate = self
        myTableView.dataSource = self
        
        
//        view.addSubview(customView)
        
//        playButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//

//        view.addSubview(someView)
//        someView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//        someView.backgroundColor = .red
        
        greenCircle.frame.size.width = 250
        greenCircle.frame.size.height = 250
        greenCircle.center = view.center
        greenCircle.backgroundColor = .green
        greenCircle.layer.cornerRadius = 125
        
    }
    
//    @objc func buttonTapped() {
//        playButton.isSelected.toggle()
//    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.addSubview(myTableView)
        view.addSubview(customView)
        myTableView.frame = view.bounds
        
        NSLayoutConstraint.activate([
            customView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            customView.widthAnchor.constraint(equalToConstant: view.frame.width - 8),
            customView.heightAnchor.constraint(equalToConstant: 70)
            
        
        ])
    }

}

extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    
    
}
