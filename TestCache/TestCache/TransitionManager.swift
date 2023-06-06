//
//  TransitionManager.swift
//  TestCache
//
//  Created by Artem Tkachenko on 27.04.2023.
//

import UIKit

//final class TransitionManager: NSObject, UIViewControllerAnimatedTransitioning {
//
//    private let duration: TimeInterval
//    private var operation = UINavigationController.Operation.push
//
//    init(duration: TimeInterval) {
//        self.duration = duration
//    }
//
//    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
//        return duration
//    }
//
//    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
//        guard
//            let fromViewController = transitionContext.viewController(forKey: .from),
//            let toViewController = transitionContext.viewController(forKey: .to)
//        else {
//            transitionContext.completeTransition(false)
//            return
//        }
//        animateTransition(from: fromViewController, to: toViewController, with: transitionContext)
//    }
//}
//
//private extension TransitionManager {
//    func animateTransition(from fromViewController: UIViewController, to toViewController: UIViewController, with context: UIViewControllerContextTransitioning) {
//        switch operation {
//        case .push:
//            guard
//                let firstViewController = fromViewController as? ViewController,
//                let secondViewController = toViewController as? SecondViewController
//            else { return }
//
//            presentViewController(secondViewController, from: firstViewController, with: context)
//
//        case .pop:
//            guard
//                let secondViewController = fromViewController as? SecondViewController,
//                let firstViewController = toViewController as? ViewController
//            else { return }
//
//            dismissViewController(firstViewController, to: secondViewController)
//        default:
//            break
//        }
//    }
//
//    func presentViewController(_ toViewController: SecondViewController, from fromViewController: ViewController, with context: UIViewControllerContextTransitioning) {
//
//        guard let image = fromViewController.image else { return }
//        let firstImageView = fromViewController.imageView
//        let secondImageView = toViewController.imageView
//
//        toViewController.view.layoutIfNeeded()
//
//        let containerView = context.containerView
//
//
//        let snapshowImageView = UIImageView()
//        snapshowImageView.clipsToBounds = true
//        snapshowImageView.image = image
//        snapshowImageView.contentMode = firstImageView.contentMode
//        snapshowImageView.image = firstImageView.image
//        snapshowImageView.layer.cornerRadius = firstImageView.layer.cornerRadius
//        snapshowImageView.frame = firstImageView.frame
//
//        containerView.addSubview(toViewController.view)
//        containerView.addSubview(snapshowImageView)
//
//        toViewController.view.isHidden = true
//
//        let animator = UIViewPropertyAnimator(duration: duration, curve: .easeInOut) {
//            snapshowImageView.frame = containerView.convert(secondImageView.frame, from: secondImageView)
//            snapshowImageView.layer.cornerRadius = 0
//        }
//
//        animator.addCompletion { position in
//            toViewController.view.isHidden = false
//            snapshowImageView.removeFromSuperview()
//            context.completeTransition(position == .end)
//        }
//
//        animator.startAnimation()
//    }
//
//    func dismissViewController(_ fromViewController: ViewController, to toViewController: SecondViewController) {
//
//    }
//}

final class TransitionManager: NSObject, UIViewControllerAnimatedTransitioning {

    private let duration: TimeInterval
    private var operation = UINavigationController.Operation.push

    init(duration: TimeInterval) {
        self.duration = duration
    }

    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard
            let fromViewController = transitionContext.viewController(forKey: .from),
            let toViewController = transitionContext.viewController(forKey: .to)
        else {
            transitionContext.completeTransition(false)
            return
        }
        animateTransition(from: fromViewController, to: toViewController, with: transitionContext)
    }
}

private extension TransitionManager {
    func animateTransition(from fromViewController: UIViewController, to toViewController: UIViewController, with context: UIViewControllerContextTransitioning) {
        switch operation {
        case .push:
            guard
                let firstViewController = fromViewController as? ViewController,
                let secondViewController = toViewController as? SecondViewController
            else { return }
            
            presentViewController(secondViewController, from: firstViewController, with: context)
            
        case .pop:
            guard
                let secondViewController = fromViewController as? SecondViewController,
                let firstViewController = toViewController as? ViewController
            else { return }
            
            dismissViewController(firstViewController, to: secondViewController)
        default:
            break
        }
    }
    
    func presentViewController(_ toViewController: SecondViewController, from fromViewController: ViewController, with context: UIViewControllerContextTransitioning) {
        
        guard let image = fromViewController.image else { return }
        let firstImageView = fromViewController.imageView
        let secondImageView = toViewController.imageView
        
        toViewController.view.layoutIfNeeded()
        
        let containerView = context.containerView
        
        let snapshotImageView = UIImageView()
        snapshotImageView.clipsToBounds = true
        snapshotImageView.image = image
        snapshotImageView.contentMode = firstImageView.contentMode
        snapshotImageView.layer.cornerRadius = firstImageView.layer.cornerRadius
        snapshotImageView.frame = firstImageView.frame
        
        containerView.addSubview(toViewController.view)
        containerView.addSubview(snapshotImageView)
        
        toViewController.view.isHidden = true
        
        let animator = UIViewPropertyAnimator(duration: duration, curve: .easeInOut) {
            snapshotImageView.frame = containerView.convert(secondImageView.frame, from: secondImageView)
            snapshotImageView.layer.cornerRadius = 0
        }
        
        animator.addCompletion { position in
            toViewController.view.isHidden = false
            snapshotImageView.removeFromSuperview()
            context.completeTransition(position == .end)
        }
        
        animator.startAnimation()
    }
    
    func dismissViewController(_ fromViewController: ViewController, to toViewController: SecondViewController) {
        guard let image = fromViewController.image else { return }
        let firstImageView = fromViewController.imageView
        let secondImageView = toViewController.imageView
        
        let containerView = fromViewController.view.superview
        
        let snapshotImageView = UIImageView()
        snapshotImageView.clipsToBounds = true
        snapshotImageView.image = image
        snapshotImageView.contentMode = secondImageView.contentMode
    }
}



extension TransitionManager: UINavigationControllerDelegate {
    func navigationController(
        _ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation,
        from fromVC: UIViewController,
        to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        self.operation = operation
        
        if operation == .push {
            return self
        }
        
        return nil
    }
}
