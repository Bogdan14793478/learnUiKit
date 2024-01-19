//
//  TextViewController.swift
//  AlertController
//
//  Created by Богдан on 1/16/24.
//

import UIKit

class TextViewController: UIViewController {
    
    var myTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTextView()
        
//        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
//
//        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: UIResponder.keyboardWillHideNotification, object: nil)

        
    }
    
    
    
    func createTextView(){
        myTextView = UITextView(frame: CGRect(x: 50, y: 100, width: self.view.bounds.width - 100, height: self.view.bounds.height / 3))
        myTextView.text = "Some text"
        myTextView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        myTextView.backgroundColor = .gray
        
        self.view.addSubview(myTextView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.myTextView.resignFirstResponder()
        self.myTextView.backgroundColor = UIColor.white
    }
    
    @objc  func updateTextView(param: Notification){
        guard let userInfo = param.userInfo else {
            return
        }
        
        let keyboardFrameEndUserInfoKey = UIResponder.keyboardFrameEndUserInfoKey
        let keyboardWillHideNotification = UIResponder.keyboardWillHideNotification
        
        if let getKeyboardRect = (userInfo[keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            let keyboardFrame = self.view.convert(getKeyboardRect, to: view.window)
            
            if param.name == keyboardWillHideNotification {
                myTextView.contentInset = UIEdgeInsets.zero
            } else {
                myTextView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardFrame.height, right: 0)
                myTextView.scrollIndicatorInsets = myTextView.contentInset
            }
            myTextView.scrollRangeToVisible(myTextView.selectedRange)
        }
        
        //        let getKeyboardRect = (userInfo![UIKeyboardFrameUserInfoKey] as! NSValue).cgRectValue
        //        let keyboardFrame = self.view.convert(getKeyboardRect, to: view.window)
        //
        //        if param.name == Notification.Name.UIKeyboardWillHide{
        //            myTextView.contentInset = UIEdgeInsets.zero
        //        } else {
        //            myTextView.contentInset = UIEdgeInsetsMake(0, 0, keyboardFrame.height, 0)
        //            myTextView.scrollIndicatorInsets = myTextView.contentInset
        //        }
        //        myTextView.scrollRangeToVisible(myTextView.selectedRange)
        
        
    }
    
    
    
}
