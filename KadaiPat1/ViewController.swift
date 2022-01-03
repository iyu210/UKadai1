//
//  ViewController.swift
//  KadaiPat1
//
//  Created by 岩渕優児 on 2021/09/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var textField1: UITextField!
    @IBOutlet weak private var textField2: UITextField!
    @IBOutlet weak private var textField3: UITextField!
    @IBOutlet weak private var textField4: UITextField!
    @IBOutlet weak private var textField5: UITextField!
    @IBOutlet weak private var numberLabel: UILabel!
    var resultNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)
    }
    @IBAction private func plusButton(_ sender: Any) {
        if let numbertText = textField1.text {
            let number: Int? = (numbertText as NSString).integerValue
            resultNumber += number!
        }
        
        if let numbertText = textField2.text {
            let number: Int? = (numbertText as NSString).integerValue
            resultNumber += number!
        }
        
        if let numbertText = textField3.text {
            let number: Int? = (numbertText as NSString).integerValue
            resultNumber += number!
        }
        
        if let numbertText = textField4.text {
            let number: Int? = (numbertText as NSString).integerValue
            resultNumber += number!
        }
        
        if let numbertText = textField5.text {
            let number: Int? = (numbertText as NSString).integerValue
            resultNumber += number!
        }
        numberLabel.text = String(resultNumber)
        view.endEditing(true)
        resultNumber = 0
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
