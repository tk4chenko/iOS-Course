//
//  CustomView.swift
//  UI in code
//
//  Created by Artem Tkachenko on 19.01.2023.
//

import UIKit

class CustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
//        self.backgroundColor = .black
        button.addTarget(self, action: #selector(isTapped), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let view: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    let button: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
//        button.backgroundColor = .black
        var config = UIButton.Configuration.plain()
//        config.
        config.buttonSize = .medium
        button.configuration = config
        button.tintColor = .white
        button.setImage(UIImage(systemName: "play"), for: .normal)
        button.setImage(UIImage(systemName: "pause"), for: .selected)
        return button
    }()
    
    @objc func isTapped(_ sender: UIButton) {
        print("Tapped")
        sender.isSelected.toggle()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addSubview(view)
        view.addSubview(button)
        view.frame = self.bounds
        NSLayoutConstraint.activate([
//            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
//            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            button.widthAnchor.constraint(equalToConstant: view.frame.width),
            button.heightAnchor.constraint(equalToConstant: view.frame.height)
        ])
    }
}
