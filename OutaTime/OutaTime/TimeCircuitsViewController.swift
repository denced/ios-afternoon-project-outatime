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
    @IBOutlet weak var speedMPHlabel: UILabel!
    @IBOutlet weak var destinationTimeLabel: UILabel!
    @IBAction func travelBackButton(_ sender: Any) {
        startTimer()
    }
    
    var currentSpeed: Int = 0
    private var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presentTimeLabel.text = dateFormatter.string(from: .init())
        speedMPHlabel.text = "\(currentSpeed) MPH"
        lastTimeDepartedLabel.text = "--- -- ----"
        destinationTimeLabel.text = dateFormatter.string(from: .init())
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: updateSpeed(timer: ))
    }
    
    func reset() {
        timer?.invalidate()
        timer = nil
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Time Travel Successful", message: "You're new date is \(String(describing: presentTimeLabel.text)).", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
    }
    
    func updateSpeed(timer: Timer){
        if currentSpeed != 88{
            currentSpeed += 1
            speedMPHlabel.text = "\(currentSpeed) MPH"
        } else {
            reset()
            lastTimeDepartedLabel.text = presentTimeLabel.text
            presentTimeLabel.text = destinationTimeLabel.text
            currentSpeed = 0
            speedMPHlabel.text = "\(currentSpeed) MPH"
           showAlert()
        }
    }
    
    var dateFormatter: DateFormatter = {
       let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd yyyy"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }()
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ModalDestinationDatePickerSegue"{
            guard let vc = segue.destination as? DatePickerViewController else {return}
            vc.delegate = self
        } else {return}
    }
    

}

extension TimeCircuitsViewController: DatePickerDelegate{
    func destinationDateWasChosen(_ date: Date) {
        destinationTimeLabel.text = dateFormatter.string(from: date)
    }
    
}
