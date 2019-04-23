//
//  DatePickerViewController.swift
//  PickerView
//
//  Created by Vu on 4/23/19.
//  Copyright © 2019 Vu. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    var data = [Int](0...100)
    override func viewDidLoad() {
        super.viewDidLoad()
        myDatePicker.addTarget(self, action: #selector(dateChange(_:)), for: .valueChanged)
    }
    
    @objc func dateChange(_ sender: UIDatePicker ) {
        let components = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: sender.date)
        if let day = components.year, let month = components.month, let year = components.day, let hour = components.hour, let second = components.minute  {
            print("\(year) \(month) \(day) \(hour) \(second)")
        }
    }
    

   

}

extension DatePickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(data[row])
    }
    
}
