//
//  BottomNavController.swift
//  AlertController
//
//  Created by Богдан on 1/15/24.
//

import UIKit

class HeaderNavController: UIViewController {
    
    let imgView = UIImageView()
    let image = UIImage(named: "icon.png")
    
    let simpleSwitch = UISwitch()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        createImdTitleView()
        
//        create switch
        self.simpleSwitch.isOn = true
        self.simpleSwitch.addAction(UIAction(handler: { _ in
            self.changeSwitch()
        }), for: .valueChanged)
        
//        create btn in top navigation
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(perfrmAdd(param:)))
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: simpleSwitch)
        
    }
    
    func changeSwitch(){
        if simpleSwitch.isOn{
            print("switch isOn")
        } else{
            print("switch isOff")
        }
    }
    
    @objc func perfrmAdd(param: Any){
        print("Add click")
    }
    
    // MARK: - create image view
    fileprivate func createImdTitleView() {
        //        Add img as title in header
        self.imgView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        self.imgView.contentMode = .scaleAspectFit
        self.imgView.image = self.image
        self.navigationItem.titleView = imgView
    }
    
    
    
}
