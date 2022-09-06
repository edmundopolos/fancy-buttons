//
//  Helpers.swift
//  fb
//
//  Created by Edmund on 24/08/2022.
//

import UIKit

func RandomNumbers(quantity:Int)->[CGFloat]{
    var randArr = [CGFloat]()
//    var color: String = "\(randArr[0]/255),\(randArr[1]/255),\(randArr[2]/255)"
    for _ in 1...quantity{
        let random = CGFloat(arc4random_uniform(255))
        randArr.append(random)
    }
    return randArr
}
