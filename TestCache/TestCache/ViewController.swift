//
//  ViewController.swift
//  TestCache
//
//  Created by Artem Tkachenko on 25.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = true
    
    var dataProvider = DataProvider()
    
    var image: UIImage?
    
    private let transitionManager = TransitionManager(duration: 0.5)
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.presentSecondViewController))
        imageView.addGestureRecognizer(tap)
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 50))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Load", for: .normal)
        button.backgroundColor = .clear
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        return button
    }()
    
    private let activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: .medium)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        return activityIndicator
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fistColor = UIColor.systemIndigo
        let lastColor = UIColor.systemBlue
        button.gradientBackground(from: fistColor, to: lastColor, direction: .leftToRight)
        button.addTarget(self, action: #selector(loadImage), for: .touchUpInside)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupConstraints()
    }
    
    @objc private func loadImage() {
        var urlString = ""
        imageView.image = nil
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        urlString = counter ? "https://images7.alphacoders.com/671/671281.jpg" : "https://images6.alphacoders.com/114/1141727.jpg"
        dataProvider.load(urlString: urlString) { image in
            self.imageView.image = image
            self.image = image
            self.activityIndicator.stopAnimating()
            self.activityIndicator.isHidden = true
        }
        counter = !counter
    }
    
    @objc private func presentSecondViewController() {
        let secondViewController = SecondViewController()
        secondViewController.imageView.image = image
        navigationController?.delegate = transitionManager
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    private func setupConstraints() {
        self.view.addSubview(imageView)
        imageView.addSubview(activityIndicator)
        self.view.addSubview(button)
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 300),
            imageView.heightAnchor.constraint(equalToConstant: 300),
            
            activityIndicator.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
            
            button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100),
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
}

extension ViewController: UIViewControllerTransitioningDelegate {
    
    // B1 - 2
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
    // B1 - 3
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
}

enum GradientDirection {
    case leftToRight
    case rightToLeft
    case topToBottom
    case bottomToTop
}

extension UIView {
    
    func gradientBackground(from color1: UIColor, to color2: UIColor, direction: GradientDirection) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [color1.cgColor, color2.cgColor]

        switch direction {
        case .leftToRight:
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        case .rightToLeft:
            gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.5)
        case .bottomToTop:
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        default:
            break
        }
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
