//
//  LabelController.swift
//  AlertController
//
//  Created by Богдан on 1/15/24.
//

import UIKit

class LabelController: UIViewController {
    
    let myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let labelFrame = CGRect(x: 0, y: 0, width: 100, height: 23)
        
        myLabel.frame = labelFrame
        myLabel.numberOfLines = 0
        myLabel.lineBreakMode = .byWordWrapping
        myLabel.adjustsFontSizeToFitWidth = true
//        myLabel.sizeToFit()
        myLabel.shadowColor = UIColor.lightGray
        myLabel.shadowOffset = CGSize(width: 2, height: 2)
        myLabel.text = "Ios 11 extednd 9"
        myLabel.font = UIFont.boldSystemFont(ofSize: 14)
        myLabel.center = self.view.center
        view.addSubview(myLabel)
    }
    



}
