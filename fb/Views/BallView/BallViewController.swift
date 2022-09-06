//
//  BallViewController.swift
//  fb
//
//  Created by Edmund on 02/09/2022.
//

import UIKit


class BallViewController: UIViewController {
    
    var viewModel = BallViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBOutlet weak var positionLbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    @IBAction func LeftButton(sender: Any){
        viewModel.updatePosition(viewModel.left)
        img.move(CGFloat(viewModel.left))
        positionLbl.text = "\(viewModel.left)"
        //+ self.left viewModel.position
        
    }
    @IBAction func RightButton(sender:Any){
        viewModel.updatePosition(viewModel.right)
        img.move(CGFloat(viewModel.right))
        positionLbl.text = "\(viewModel.right)"
        //+ viewModel.position
        
    }

}
