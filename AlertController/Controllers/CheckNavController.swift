//
//  UINavigationController.swift
//  AlertController
//
//  Created by Богдан on 1/11/24.
//

import UIKit

class CheckNavController: UIViewController {

    var displaySecondBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "First view Chel"
                
        self.displaySecondBtn = UIButton(type: .system)
        self.displaySecondBtn.setTitle("Second screen", for: .normal)
        self.displaySecondBtn.sizeToFit()
        self.displaySecondBtn.center = self.view.center
        
//        self.displaySecondBtn.addTarget(self, action: #selector(showSecondScreen(param:)), for: .touchUpInside)
        self.displaySecondBtn.addAction(UIAction(handler: { action in
            self.showSecondScreen()
        }), for: .touchUpInside)
        
        self.view.addSubview(self.displaySecondBtn)
    }
    
    func showSecondScreen() {
        navigationController?.pushViewController(CheckNavSecondController(), animated: true)
        
    }
    
  

}
