//
//  CheckNavSecondController.swift
//  AlertController
//
//  Created by Богдан on 1/12/24.
//

import UIKit

class CheckNavSecondController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "Its second sreen"

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.perform( #selector(goBack), with: nil, afterDelay: 3.0)
    }
    
    @objc func goBack (){
//        navigationController?.popViewController(animated: true)
        
        var currentArray = navigationController?.viewControllers
        
        currentArray?.removeLast()
        
        if let newController = currentArray{
            navigationController?.viewControllers = newController
        }
    }
 

}
