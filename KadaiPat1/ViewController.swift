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
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func plusButton(_ sender: Any) {
        if textField1.text?.isEmpty == false {
            let number: Int? = Int(textField1.text!)!
            resultNumber += number!
        }
        
        if textField2.text?.isEmpty == false {
            let number: Int? = Int(textField2.text!)!
            resultNumber += number!
        }
        
        if textField3.text?.isEmpty == false {
            let number: Int? = Int(textField3.text!)!
            resultNumber += number!
        }
        
        if textField4.text?.isEmpty == false {
            let number: Int? = Int(textField4.text!)!
            resultNumber += number!
        }
        
        if textField5.text?.isEmpty == false {
            let number: Int? = Int(textField5.text!)!
            resultNumber += number!
        }
        
        numberLabel.text = String(resultNumber)
        view.endEditing(true)
        resultNumber = 0
    }
    
    @objc func dismissKeyboard() {
        // キーボードを閉じる
        view.endEditing(true)
    }
}
