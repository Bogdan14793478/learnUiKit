//
//  SwitchControllerSecond.swift
//  AlertController
//
//  Created by Богдан on 1/3/24.
//

import UIKit
import AVFoundation

class SliderController: UIViewController {
    
    var player = AVAudioPlayer()
//    let mySlider = UISlider()

    //MARK - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
//        setDelegate()
        do{
            let audioPath = Bundle.main.path(forResource: "max_barski", ofType: "mp3")
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath! ))
                
           
        } catch{
            print("Error load file")
        }
        self.player.play()
    }
    }
    

//}

//extension SliderController {
//    func setDelegate(){
//        do{
//            let audioPath = Bundle.main.path(forResource: "max_barski", ofType: "mp3", inDirectory: "Files")
//
//            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath! ))
//
//
//        } catch{
//            print("Error load file")
//        }
//        self.player.play()
//    }
//}
