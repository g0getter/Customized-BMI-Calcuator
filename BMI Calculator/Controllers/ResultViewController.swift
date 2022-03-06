//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 여나경 on 2022/03/06.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculatedPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
