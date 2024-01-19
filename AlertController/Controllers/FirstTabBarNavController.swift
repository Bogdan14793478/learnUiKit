//
//  FirstTabBarNavController.swift
//  AlertController
//
//  Created by Богдан on 1/15/24.
//

import UIKit

class FirstTabBarNavController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        self.navigationItem.title = "First VC"
        
        
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        self.tabBarItem = tabBarItem
        
        
    }
    


}
