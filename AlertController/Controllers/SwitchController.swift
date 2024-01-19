//
//  SwitchController.swift
//  AlertController
//
//  Created by Богдан on 12/12/23.
//

import Foundation
import UIKit

class SwitchController: UIViewController {
    
    
    @IBOutlet var helpToConnect: UIView!
    
    //    Switch
        let mySwitch = UISwitch()
    let mySwitchTwo = UISwitch()
    
    let button = UIButton()

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        stylish button
        self.button.frame = CGRect(x: 100, y: 140, width: 150, height: 20)
        self.button.backgroundColor = UIColor.orange
        self.button.setTitle("Click me", for: .normal)
        
        self.button.setTitle("Button press", for: .highlighted)
//        for show on view
        self.view.addSubview(self.button)
        
        
        
//        for stylish selectors
        self.mySwitchTwo.frame = CGRect.zero
        
        self.mySwitchTwo.center = self.view.center
        self.view.addSubview(self.mySwitchTwo)
        
//        of
        self.mySwitchTwo.tintColor = UIColor.green
//        selectors
        self.mySwitchTwo.thumbTintColor = UIColor.red
//        on
        self.mySwitchTwo.onTintColor = UIColor.blue
        
        self.mySwitchTwo.addTarget(self, action: #selector(switchTwoTarget(paramTarget:)), for: .valueChanged)

////     first variant -   for switch work and show on frame
//        self.mySwitch.frame = CGRect(x:100, y:140, width: 0, height: 0)
//        self.view.addSubview(self.mySwitch)
//
////        switch on
//        self.mySwitch.setOn(true, animated: true)
//
////        is switch on?
//        if self.mySwitch.isOn {
//            print("switch On")
//        } else {
//            print("switch off")
//        }
////        for get info from swith (on/off)
//        self.mySwitch.addTarget(self, action: #selector(switchTargetAction(paramTarget:)), for: .valueChanged)
    }
        
    @objc func switchTargetAction(paramTarget: UISwitch){
        print("paramTarget", paramTarget)
        
        if paramTarget.isOn{ print("Switch on")}
        else{
            print("Switch off")
        }
    }
    
    
    @objc func switchTwoTarget (paramTarget: UISwitch){
        if paramTarget.isOn {
            self.button.isUserInteractionEnabled = false
        } else {
            self.button.isUserInteractionEnabled = true
        }
    }

   


}
