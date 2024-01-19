//
//  SceneDelegate.swift
//  AlertController
//
//  Created by Богдан on 12/11/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    var myViewController: UINavigationController?
    
    var tabBarCont: UITabBarController?
    
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // MARK: - its for CheckNavController - click and go on next screen
        //        window = UIWindow(windowScene: windowScene)
        //        myViewController = UINavigationController()
        //        window?.rootViewController = myViewController
        //        window?.makeKeyAndVisible()
        //        myViewController?.setViewControllers([CheckNavController()], animated: true)
        
//        window = UIWindow(windowScene: windowScene)
//        myViewController = UINavigationController()
        
        //        window?.rootViewController = myViewController
        //        window?.makeKeyAndVisible()
        //        myViewController?.setViewControllers([HeaderNavController()], animated: true)
        
        // MARK: - its for TabBarController + Navigation
//        add screen
//        tabBarCont = UITabBarController()
//        let firstScreen = FirstTabBarNavController()
//        let secondScreen = SecondTabBarNavController()
//
////        add headerNav to screen
//        let firstNavController = UINavigationController(rootViewController: firstScreen)
//        let secondNavController = UINavigationController(rootViewController: secondScreen)
//
//
//        window?.rootViewController = tabBarCont
//        window?.makeKeyAndVisible()
//        tabBarCont?.setViewControllers([firstNavController, secondNavController], animated: true)
        
        
        
    }
    
    
    
}

