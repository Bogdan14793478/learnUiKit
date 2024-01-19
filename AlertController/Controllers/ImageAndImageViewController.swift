//
//  ImageAndImageViewController.swift
//  AlertController
//
//  Created by Богдан on 1/18/24.
//

import UIKit

class ImageAndImageViewController: UIViewController {
    
    var myImageView = UIImageView()
    var photoImage = UIImage(named: "photo1")

    override func viewDidLoad() {
        super.viewDidLoad()

//        myImageView = UIImageView(image: photoImage)
        myImageView = UIImageView(frame: self.view.bounds)
        myImageView.contentMode = .scaleAspectFit
//        myImageView.layer.cornerRadius = 50
//         Когда clipsToBounds установлен в true, любой контент, выходящий за границы вью, будет обрезан и не будет виден. Если clipsToBounds установлен в false, то контент может выходить за границы вью и быть видимым.
//        myImageView.clipsToBounds = true
        myImageView.image = photoImage
        myImageView.center = view.center
        view.addSubview(myImageView)
    }
    

  

}
