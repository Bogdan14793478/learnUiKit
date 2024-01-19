//
//  DataPickerController.swift
//  AlertController
//
//  Created by Богдан on 12/12/23.
//

import UIKit

class DataPickerController: UIViewController {
    
    private let picker = UIDatePicker()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        
    }
    
    @objc func getDatePickerInfo (param: UIDatePicker){
        if param.isEqual(self.picker){
            print("dateChenge: ", param.date)
        }
    }
    
}

// MARK: - Private
extension DataPickerController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        print("hi1")
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        print("hi2")
        return 3
    }
    
    func setDelegate(){
        picker.center = view.center
        picker.datePickerMode = .date
        
//        if we need use timer use =>
//        picker.datePickerMode = .countDownTimer
//        picker.countDownDuration = 2*60

        self.view.addSubview(picker)
//        its for get min/max value which we can choose
//        var oneYearTime = TimeInterval()
//        oneYearTime = 365*24*60*60
//        let todey = Date()
//
//        let oneYearFromToday = todey.addingTimeInterval(oneYearTime)
//
//        let twoYearFromDate = todey.addingTimeInterval(2*oneYearTime)
//
//        picker.minimumDate = oneYearFromToday
//        picker.maximumDate = twoYearFromDate
        
        picker.addTarget(self, action: #selector(getDatePickerInfo(param:)), for: .valueChanged)
        
    }
}
