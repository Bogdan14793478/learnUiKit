//
//  ButtonController.swift
//  AlertController
//
//  Created by Богдан on 1/17/24.
//

import UIKit

class ButtonController: UIViewController {
    
    var myBtn = UIButton()
    var iconImg = UIImage(named: "icon")
    var highlighterImg = UIImage(named: "photo1")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myBtn = UIButton(type: .roundedRect)
        myBtn.frame = CGRect(x: 110, y: 200, width: 100, height: 100)
        myBtn.setTitle("1", for: .normal)
        myBtn.setTitle("2", for: .highlighted)
        
        
        
        myBtn.setBackgroundImage(iconImg, for: .normal)
        myBtn.setBackgroundImage(highlighterImg, for: .highlighted)
        
        myBtn.addAction(UIAction(handler: { action in
            self.buttonIsTapped(sender: self.myBtn)
        }), for: .touchUpInside)
        
        myBtn.addAction(UIAction(handler: { action in
            self.buttonIsPressed(sender: self.myBtn)
        }), for: .touchDown)

        
        self.view.addSubview(myBtn)

    }
    
    @objc func buttonIsPressed(sender: UIButton){
        print("Button is pressed")
        
    }
    
    @objc func buttonIsTapped(sender: UIButton){
        print("Button is taped")
    }
    

   

}
