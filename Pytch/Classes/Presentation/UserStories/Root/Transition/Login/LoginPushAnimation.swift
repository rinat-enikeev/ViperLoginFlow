//
//  LoginPushAnimation.swift
//  Pytch
//
//  Created by Rinat Enikeev on 22/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class LoginPushAnimation: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return TimeInterval(UINavigationController.hideShowBarDuration)
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let fromVC = transitionContext.viewController(forKey: .from) else { return }
        guard let toVC = transitionContext.viewController(forKey: .to) else { return }
        let container = transitionContext.containerView
        container.addSubview(toVC.view)
        container.bringSubviewToFront(fromVC.view)
        
        var transfrom = CATransform3DIdentity
        transfrom.m34 = -0.002
        container.layer.sublayerTransform = transfrom
        
        let initalFrame = transitionContext.initialFrame(for: fromVC)
        toVC.view.frame = initalFrame
        fromVC.view.frame = initalFrame
        toVC.view.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi / 2), 0, 1, 0)
        
        container.backgroundColor = .black
        UIView.animate(withDuration: transitionDuration(using: transitionContext), delay: 0, options: UIView.AnimationOptions.curveEaseOut, animations: {
            fromVC.view.layer.transform = CATransform3DMakeRotation(CGFloat(-Double.pi / 2), 0, 1, 0)
        }, completion: { (finished) in
            container.bringSubviewToFront(toVC.view)
            UIView.animate(withDuration: self.transitionDuration(using: transitionContext), delay: 0, options: UIView.AnimationOptions.curveEaseOut, animations: { () -> Void in
                toVC.view.layer.transform = CATransform3DIdentity
                container.backgroundColor = .white
            }) { (finished: Bool) -> Void in
                fromVC.view.layer.transform = CATransform3DIdentity
                transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
            }
        })
    }
}
