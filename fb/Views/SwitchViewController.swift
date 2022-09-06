//
//  SwitchViewController.swift
//  fb
//
//  Created by Edmund on 26/08/2022.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var ToggleButton: UIButton!
    @IBOutlet weak var switchStateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var switchState: SwitchState = .OFF
    
    @IBAction func ButtonIsPressed(_ sender: UIButton) {
        switchState.ToggleSwitch()
        if switchState == .OFF{
            view.backgroundColor = .white
            switchStateLabel.text = "ON"
            sender.titleLabel?.textColor = .white
            sender.backgroundColor = .black
            sender.setTitle("Toggle ON", for: .normal)
            sender.setTitleColor(.white, for: .normal)
            
        }else {
            view.backgroundColor = .black
            switchStateLabel.text = "OFF"
            sender.titleLabel?.textColor = .black
            sender.backgroundColor = .white
            sender.setTitle("Toggle OFF", for: .normal)
            sender.setTitleColor(.black, for: .normal)

        }
    }
 
    

}
