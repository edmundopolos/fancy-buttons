//
//  ColorPickerViewController.swift
//  fb
//
//  Created by Edmund on 25/08/2022.
//

import UIKit

class ColorPickerViewController: UIViewController {
    var delegate: ColorTransferDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func colorBtnWasPressed(sender: UIButton){
        if delegate != nil{
            delegate?.userDidChoose(color: sender.backgroundColor! ,withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
