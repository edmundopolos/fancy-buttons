//
//  UIImage.swift
//  fb
//
//  Created by Edmund on 02/09/2022.
//

import UIKit


extension UIImageView{
   func move(_ position: CGFloat){
        let moveAnimation = CABasicAnimation(keyPath: "position")
       moveAnimation.duration = 0.1
       moveAnimation.autoreverses = false
       moveAnimation.fromValue = CGPoint(x: self.center.x , y: self.center.y)
       moveAnimation.toValue = CGPoint(x: self.center.x + position, y: self.center.y)
       layer.add(moveAnimation, forKey: "position")

    }
}
