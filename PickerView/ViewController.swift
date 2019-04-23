//
//  ViewController.swift
//  PickerView
//
//  Created by Vu on 4/23/19.
//  Copyright © 2019 Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myPickerView: UIPickerView!
    
    var data = [Int](0...100)
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.selectRow(26, inComponent: 0, animated: true)
    }


}
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
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

