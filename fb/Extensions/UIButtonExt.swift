//
//  UIButtonExt.swift
//  fb
//
//  Created by Edmund on 24/08/2022.
//

import UIKit

extension UIButton {
    func wiggle (){
        let wiggleAnim = CABasicAnimation(keyPath: "position")
        wiggleAnim.duration = 0.06
        wiggleAnim.repeatCount = 5
        wiggleAnim.autoreverses = true
        wiggleAnim.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        wiggleAnim.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(wiggleAnim, forKey: "position")
    }
    
    func dim(){
        UIView.animate(withDuration: 0.15, animations: {self.alpha = 0.55}) { (finished) in
            UIView.animate(withDuration: 0.15, animations: {self.alpha=1.0})
        }
    }
    
    func colorize (){
        let randomArray = RandomNumbers(quantity: 3)
        print(randomArray)
        let color = UIColor(red: randomArray[0]/255, green: randomArray[1]/255, blue: randomArray[2]/255,alpha: 1.0)
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = color
        }
    }
    
    func offon(_ switcher: SwitchState,sender:UIButton){
        if switcher == .OFF{
            sender.titleLabel?.textColor = .white
            sender.backgroundColor = .white
            sender.setTitle("Toggle ON", for: .normal)
            
        }else {
            sender.titleLabel?.textColor = .black
            sender.backgroundColor = .white
            sender.setTitle("Toggle ON", for: .normal)
        }
    }
}
