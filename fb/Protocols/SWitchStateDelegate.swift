//
//  SWitchStateDelegate.swift
//  fb
//
//  Created by Edmund on 26/08/2022.
//

import UIKit

enum SwitchState: Togglable{
    case ON
    case OFF
    
    mutating func ToggleSwitch(){
        switch self {
        case .ON:
            self = .OFF
        case.OFF:
            self = .ON
        }
    }
}
