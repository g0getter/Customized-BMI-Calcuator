//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        let twoDecimalValue = String(format: "%.2f", sender.value)
        heightLabel.text = "\(twoDecimalValue)m"
        
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
//        let integerValue = sender.value.rounded()
        let integerValue = Int(sender.value)
//        let integerValue = String(format: "%.0f", sender.value)
        
        weightLabel.text = "\(integerValue)Kg"
    }
    
    @IBAction func calcuatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        
        self.bmiValue = String(format: "%.1f", bmi)
        
        // !!
        performSegue(withIdentifier: "goToResult", sender: self) // Segue(세그웨이), sender: 누가 segue를 initiate하는지
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // !! Set the value
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as? ResultViewController // as: DownCasting
            destinationVC?.bmiValue = self.bmiValue
//            segue.destination // segue가 trigger되면 initialize될 곳
        }
        
    }
    
}

