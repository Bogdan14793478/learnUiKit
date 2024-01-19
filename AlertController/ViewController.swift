//
//  ViewController.swift
//  AlertController
//
//  Created by Богдан on 12/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hiLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            }
    
//Alert
    @IBAction func showAlertButton(_ sender: Any) {
        self.hiLabel.text = "Hi"
        
        self.alert(title: "Look it", message: "Its optional window", style: .alert)
 
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .cancel){ action in
            let text = alertController.textFields?.first?.text
            print(text!)
            self.hiLabel.text! = "Hi " + text! + ("!")
        }
        
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    

   


}

