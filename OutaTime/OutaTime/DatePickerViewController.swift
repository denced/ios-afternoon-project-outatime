//
//  DatePickerViewController.swift
//  OutaTime
//
//  Created by denis cedeno on 10/8/19.
//  Copyright © 2019 DenCedeno Co. All rights reserved.
//

import UIKit

protocol DatePickerDelegate{
    func destinationDateWasChosen(_ date: Date)
}

class DatePickerViewController: UIViewController {
    
    var delegate: DatePickerDelegate?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    

    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func doneButton(_ sender: Any) {
        delegate?.destinationDateWasChosen(datePicker.date)
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}

