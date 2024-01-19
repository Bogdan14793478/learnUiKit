//
//  SegmentController.swift
//  AlertController
//
//  Created by Богдан on 1/11/24.
//

import UIKit

class SegmentController: UIViewController {
    
    var segmentControll = UISegmentedControl()
    var imageView = UIImageView()
    var menuArray = ["one", "two", "three"]
    
    let imageArray = [UIImage(named: "photo1.jpeg"), UIImage(named: "photo2.jpeg"), UIImage(named: "photo3.jpeg")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDelegate()
    }
    
    @objc func selectedValue(param: UISegmentedControl){
        if param == self.segmentControll {
            let segmentIndex = param.selectedSegmentIndex
            self.imageView.image = self.imageArray[segmentIndex]
        }
    }
    
    
}


extension SegmentController {
    
    func setDelegate(){
        // create segment
        self.segmentControll = UISegmentedControl(items: self.menuArray)
        self.segmentControll.frame = CGRect(x: 100, y: 600, width: 200, height: 30)
        self.view.addSubview(segmentControll)
        
//        create image
        self.imageView.frame = CGRect(x: 1, y: 1, width: 200, height: 200)
        self.imageView.center = self.view.center
        self.imageView.image = self.imageArray[0]
        self.view.addSubview(self.imageView)
        
        self.segmentControll.addTarget(self, action: #selector(selectedValue(param:)), for: .valueChanged)
    }
}

