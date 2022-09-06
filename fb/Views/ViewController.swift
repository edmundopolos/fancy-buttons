//
//  ViewController.swift
//  fb
//
//  Created by Edmund on 24/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wiggleBtn: UIButton!
    @IBOutlet weak var dimBtn: UIButton!
//    @IBOutlet weak var colorizeBtn: UIButton!
    @IBOutlet weak var colorizeBtn: UIButton!
    
  
 
//    @IBAction func colorAction(_ sender: Any) {
//        colorizeBtn.wiggle()
//    }

    @IBAction func wiggleAction(_ sender: Any) {
        wiggleBtn.wiggle()
    }
    @IBAction func colorizeAction(_ sender: Any) {
        colorizeBtn.colorize()

    }
    
    @IBAction func dimAction(_ sender: Any) {
        dimBtn.dim()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

