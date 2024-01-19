//
//  TextFieldNotificationController.swift
//  AlertController
//
//  Created by Богдан on 1/15/24.
//

import UIKit

class TextFieldNotificationController: UIViewController, UITextFieldDelegate{
    
    var myTextField = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createTextField()
        
        // MARK: - subscribe for use methods
        self.myTextField.delegate = self
        
        // MARK: - Notification
        //        NotificationCenter.default.addObserver(self, selector: #selector(textFieldTextDidChange(param:)), name: UITextField.textDidChangeNotification, object: nil)
        
        
        //        MARK: - up adn down textField, when click inside textField and press return + textFieldShouldReturn
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { notification in
            if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
                let keyboardHeight = keyboardFrame.cgRectValue.height
                self.view.frame.origin.y = -keyboardHeight
            }
        }
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { _ in
            self.view.frame.origin.y = 0
        }
    }
    
    // MARK: - create textField
    func createTextField(){
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 31)
        
        myTextField = UITextField(frame: textFieldFrame)
        myTextField.borderStyle = UITextField.BorderStyle.roundedRect
        myTextField.contentVerticalAlignment = .center
        myTextField.textAlignment = .center
        myTextField.placeholder = "I swift dev"
        myTextField.center = self.view.center
        view.addSubview(myTextField)
        
    }
    
    // MARK: - Notification
    @objc func textFieldTextDidChange(param: NSNotification){
        print("param", param)
    }
    
    //    MARK: - get info from textField
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool{
        print("textFieldShouldEndEditing param возвращает: закончилось редактирование или нет (если фолс - при нажатии на клавиатуре на ретурн - не перепрыгнет на следующее поле текстФиелд)")
        
        return true
    }
    
    // MARK: - work with style
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        //        if textField == myTextField {return true}else{return false}
        print("textFieldShouldBeginEditing param возвращает можно ли редактировать поле")
        return true
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField){
        print("textFieldDidBeginEditing param возвращает: началось редактирование или нет")
        
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason){
        print("textFieldDidEndEditing ")
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        print("textField shouldChangeCharactersIn сработает, когда написали что то в поле, = вы ввели = \(string)")
        
        return true
    }
    
    
    func textFieldDidChangeSelection(_ textField: UITextField){
        
    }
    
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool{
        print("textFieldShouldClear = что то очищаеш в поле")
        return true
    }
    
    //    MAKR: - hidden keyboard when change focus
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        print("textFieldShouldReturn = хотите убрать клавиатуру?")
        if textField == myTextField{
            self.myTextField.resignFirstResponder()
        }
        return true
    }
    
    
    
    
    
}
