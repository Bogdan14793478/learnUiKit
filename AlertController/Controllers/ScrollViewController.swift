//
//  ScrollViewController.swift
//  AlertController
//
//  Created by Богдан on 1/18/24.
//

import UIKit

class ScrollViewController: UIViewController, UIScrollViewDelegate {
    
    var myScrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        createScrollView()
        
        let natureFirstImage = UIImage(named: "photo1")
        let natureSecondImage = UIImage(named: "photo2")
        let natureThirdImage = UIImage(named: "photo3")

        let scrollViewRect = self.view.bounds
        
//        create scroll
        myScrollView = UIScrollView(frame: scrollViewRect)
        
//        if false - we hawe not a 1 img on 1 page, we see as 1 big photo join with another + margin !!
        myScrollView.isPagingEnabled = true
        
        myScrollView.contentSize = CGSize(width: scrollViewRect.size.width * 3, height: scrollViewRect.size.height)
        self.view.addSubview(myScrollView)
        
        var imageViewRect = self.view.bounds
        var natureFirstImageView = self.newImageWithImage(paramImage: natureFirstImage!, paramFrame: imageViewRect)
        myScrollView.addSubview(natureFirstImageView)

        
        imageViewRect.origin.x += imageViewRect.size.width
        var natureSecondImageView = self.newImageWithImage(paramImage: natureSecondImage!, paramFrame: imageViewRect)
        myScrollView.addSubview(natureSecondImageView)
        
        imageViewRect.origin.x += imageViewRect.size.width
        var natureThirdImageView = self.newImageWithImage(paramImage: natureThirdImage!, paramFrame: imageViewRect)
        myScrollView.addSubview(natureThirdImageView)

        
    }
    
    func newImageWithImage(paramImage: UIImage, paramFrame: CGRect)->UIImageView {
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
    }
    
////    MARK: - UIScrollViewDelegate
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let p = "scroll start"
//        print(p)
//
////        how mutch scroll on y
//        print(scrollView.contentOffset.y)
//        self.myScrollView.alpha = 0.50
//    }
//
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        let p = "Scroll after scrolling"
//        print(p)
//        self.myScrollView.alpha = 1.0
//    }
//
//    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        let p = "Scroll end, alpha = 1.0"
//        print(p)
//        self.myScrollView.alpha = 1.0
//
//    }
//
//    func createScrollView(){
//        let imageToLoad = UIImage(named: "photo2")
//        var myImageView = UIImageView(image: imageToLoad)
//
//        myScrollView = UIScrollView(frame: self.view.bounds)
//        myScrollView.addSubview(myImageView)
//        myScrollView.contentSize = myImageView.bounds.size
//
//        myScrollView.delegate = self
//        self.view.addSubview(myScrollView)
//    }
    
    
    
}
