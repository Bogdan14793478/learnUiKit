//
//  ActivityViewController.swift
//  AlertController
//
//  Created by Богдан on 1/11/24.
//

import UIKit

class ActivityViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {
    
    var buttonShare = UIButton()
    var textField = UITextField()
    var activityViewController: UIActivityViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createButton()
        self.createTextField()
        
        // Do any additional setup after loading the view.
    }
    //    MARK: - create text field to share text
    func createTextField() {
        self.textField.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        self.textField.center = self.view.center
        self.textField.borderStyle = UITextField.BorderStyle.roundedRect
        self.textField.placeholder = "Enter text to share"
        
//        to hidden claviature when press return
        self.textField.delegate = self
        
        self.view.addSubview(self.textField)
        
        
    }
    
    //    MARK: = create bunnon, when click - open modal
    func createButton(){
        self.buttonShare = UIButton(type: .roundedRect)
        self.buttonShare.frame = CGRect(x: 50, y: 450, width: 280, height: 40)
        self.buttonShare.setTitle("Расшарить", for: .normal)
        self.buttonShare.addTarget(self, action: #selector(handleShare), for: .touchUpInside)
        self.view.addSubview(self.buttonShare)
    }
    
    @objc func handleShare(param:  Any){
        let text = self.textField.text
        
        if text?.count == 0 {
            let message = "First: upload text and press btn"
            let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
        }
        self.activityViewController = UIActivityViewController(activityItems: [self.textField.text ?? "nil"], applicationActivities: nil)
        self.present(self.activityViewController!, animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textField.resignFirstResponder()
        return true
    }
    
    
}
