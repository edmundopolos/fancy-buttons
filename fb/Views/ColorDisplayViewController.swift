//
//  ColorDisplayViewController.swift
//  fb
//
//  Created by Edmund on 25/08/2022.
//

import UIKit

class ColorDisplayViewController: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorLabelName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func userDidChoose(color: UIColor,  withName colorName: String) {
        view.backgroundColor = color
        colorLabelName.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColor"{
            guard let colorPicker = segue.destination as?
            ColorPickerViewController else { return   }
            colorPicker.delegate = self
        }
    }


}
