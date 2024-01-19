//
//  SliderTController.swift
//  AlertController
//
//  Created by Богдан on 1/10/24.
//

import UIKit
import AVFoundation

class SliderTController: UIViewController {
    
    @IBOutlet weak var volumeUIKit: UISlider!
    
    
    @IBOutlet weak var redirectToSegmentBtn: UIButton!
    
    
    var player = AVAudioPlayer()
    let slider = UISlider()
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        redirectToSegmentBtn.backgroundColor = .blue
        
        view.backgroundColor = .white
        
        setDelegate()
        
    }
    
    @IBAction func playMusic(_ sender: Any) {
        self.player.play()
    }
    
    @IBAction func pauseMusic(_ sender: Any) {
        self.player.pause()
    }
    
    @objc func changeSlider(sender: UISlider){
        if sender == slider{
            self.player.currentTime = TimeInterval(sender.value)
        }
    }
    
    @IBAction func changeVolume(_ sender: Any) {
        self.player.volume = self.volumeUIKit.value
    }
//    @IBAction func openSegment(_ sender: Any) {
//        moveToOtherController()
//    }
    
//    private func moveToOtherController(){
//        self.navigationController?.pushViewController(ActivityViewController(), animated: true)
//    }
}

extension SliderTController {
    func setDelegate (){
        // Add slider
        self.slider.frame = CGRect(x:0, y:0, width: 200, height: 23)
        self.slider.center = self.view.center
        self.slider.minimumValue = 0
        self.slider.maximumValue = 100.0
        self.view.addSubview(slider)
        
        //  Add Target
        self.slider.addTarget(self, action: #selector(changeSlider(sender:)), for: .valueChanged)
        
        //  Add Player music
        do{
            let audioPath = Bundle.main.path(forResource: "max_barski", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath! ))
            
            self.slider.maximumValue=Float(player.duration)
            
            
        } catch{
            print("Error load file")
        }
    }
}

