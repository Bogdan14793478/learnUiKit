//
//  ProgressViewController.swift
//  AlertController
//
//  Created by Богдан on 1/19/24.
//

import UIKit

final class ProgressViewController: UIViewController {
    
   private var myProgress = UIProgressView()
   private var myButton = UIButton()
   private var myTimer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createProgress(myProgress)
        
        createBtn(myButton)
        
        createTimer()
    }
    
    // MARK: - Timer
   private func createTimer(){
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self,
                                       selector: #selector(updateProgressView),
                                       userInfo: nil,
                                       repeats: true)
    }
    
    // MARK: - Selector
    @objc func updateProgressView(){
        if myProgress.progress != 1.0 {
            myProgress.progress += 0.1
        } else if myProgress.progress == 1.0 {
            UIView.animate(withDuration: 0.7) {
                self.myButton.alpha = 1
                self.myButton.setTitle("Press start", for: .normal)
                
                // stop timer
                self.myTimer.invalidate()
            }
        }
    }
    
    
    // MARK: - create UI
   private func createProgress(_ progressView: UIProgressView){
        progressView.progressViewStyle = .default
        progressView.frame = CGRect(x: view.center.x, y: view.center.y, width: 150, height: 20)
        progressView.setProgress(0.0, animated: false)
        progressView.progressTintColor = UIColor.green
        progressView.trackTintColor = UIColor.gray
        progressView.center = view.center
        view.addSubview(progressView)
    }
    
   private func createBtn (_ button: UIButton){
        button.frame = CGRect(x: view.bounds.size.width / 4, y: view.center.y + 100, width: 150, height: 50)
        button.setTitle("Load", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .red
        button.alpha = 0.2
        view.addSubview(button)
    }

}
