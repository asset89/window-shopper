//
//  ViewController.swift
//  window-shopper
//
//  Created by Asset Ryskul on 8/5/20.
//  Copyright © 2020 Asset Ryskul. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTextField: CurrencyTextField!
    @IBOutlet weak var priceTextField: CurrencyTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 52))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.9489779538)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calcButton
        priceTextField.inputAccessoryView = calcButton
        
        resultLabel.isHidden  = true
        hoursLabel.isHidden = true
        
    }
    
    @objc func calculate() {
        if let wageTxt = wageTextField.text, let priceTxt = priceTextField.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorButton_Pressed(_ sender: UIButton) {
        resultLabel.isHidden  = true
        hoursLabel.isHidden = true
        
        wageTextField.text = ""
        priceTextField.text = ""
    }
}

