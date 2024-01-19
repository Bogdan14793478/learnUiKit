//
//  SecondTabBarNavController.swift
//  AlertController
//
//  Created by Богдан on 1/15/24.
//

import UIKit

class SecondTabBarNavController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blue
        self.navigationItem.title = "Second VC"
        
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        self.tabBarItem = tabBarItem
        


        
    }
    

   

}
