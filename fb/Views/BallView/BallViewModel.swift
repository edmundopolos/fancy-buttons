//
//  BallViewModel.swift
//  fb
//
//  Created by Edmund on 01/09/2022.
//

import Foundation

class BallViewModel: Updatepostion{
    var left: Float = -50.0
    var right: Float = 50.0
    var position : ObservableObject<Int?> = ObservableObject(nil)
    init(){}
    
    func updatePosition(_ position: Float){
        self.position = ObservableObject(Int(position))
    }
}
