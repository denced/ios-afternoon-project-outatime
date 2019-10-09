//
//  TimeCircuitsViewController.swift
//  OutaTime
//
//  Created by denis cedeno on 10/8/19.
//  Copyright © 2019 DenCedeno Co. All rights reserved.
//

import UIKit

class TimeCircuitsViewController: UIViewController {

    @IBOutlet weak var lastTimeDepartedLabel: UILabel!
    @IBOutlet weak var presentTimeLabel: UILabel!
    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var speedMPHlabel: UILabel!
    
    @IBAction func travelBackButton(_ sender: Any) {
    }
    
    var currentSpeed: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presentTimeLabel.text = dateFormatter.string(from: .init())
        speedMPHlabel.text = "\(currentSpeed) MPH"
        lastTimeDepartedLabel.text = "--- -- ----"

    }
    
    private var dateFormatter: DateFormatter = {
       let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd yyyy"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }()
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
