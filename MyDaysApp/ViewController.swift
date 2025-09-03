//
//  ViewController.swift
//  MyDaysApp
//
//  Created by afon.com on 31.08.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLable: UILabel!
//    @IBOutlet weak var resultButton: UIButton!
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        resultButton.layer.cornerRadius = 12
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    
    @IBAction func resultButtonTapped(_ sender: UIButton) {
        infoLable.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
    }
    
}

