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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 52))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.9489779538)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.addTarget(self, action: #selector(self.calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calcButton
        priceTextField.inputAccessoryView = calcButton
        
    }
    
    @objc func calculate() {
        print("We got here!!!")
    }

}

