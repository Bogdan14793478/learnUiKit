//
//  PickerController.swift
//  AlertController
//
//  Created by Богдан on 12/12/23.
//

import Foundation
import UIKit

class PickerController: UIViewController {
    //    this 2 func - for work with subscribe
    // MARK: - Subviews
    private let picker = UIPickerView()
    
    // MARK: - Outlet
    @IBOutlet weak var label: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //        self.picker.center = self.view.center
        picker.center = view.center
        setDelegates()
        self.view.addSubview(picker)
        
    }
}

//    this 2 extension - for work with subscribe
// MARK: - Private
private extension PickerController{
    func setDelegates (){
        //        subscribe + extension
        picker.dataSource = self
        picker.delegate = self
    }
}

// MARK: - UIPickerViewDataSource
extension PickerController: UIPickerViewDataSource {
    //    how mutch components in row
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //    how match components scroll
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
}

//what we see
extension PickerController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let result = "row = \(row)"
        return result
    }
}
