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
    
    @IBOutlet weak var datePicker: UIPickerView!
    
    @IBAction func cancelButton(_ sender: Any) {
    }
    
    @IBAction func doneButton(_ sender: Any) {
    }
    
    var delegate: DatePickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
