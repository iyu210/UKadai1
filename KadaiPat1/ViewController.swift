//
//  ViewController.swift
//  KadaiPat1
//
//  Created by 岩渕優児 on 2021/09/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var resultNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusButton(_ sender: Any) {
        
        if textField1.text?.isEmpty == false{
            let number: Int? = Int(textField1.text!)!
            resultNumber = resultNumber + number!
        }
        
        if textField2.text?.isEmpty == false{
            let number: Int? = Int(textField2.text!)!
            resultNumber = resultNumber + number!
        }
        
        
        if textField3.text?.isEmpty == false{
            let number: Int? = Int(textField3.text!)!
            resultNumber = resultNumber + number!
        }
        
        
        if textField4.text?.isEmpty == false{
            let number: Int? = Int(textField4.text!)!
            resultNumber = resultNumber + number!
        }
        
        if textField5.text?.isEmpty == false{
            let number: Int? = Int(textField5.text!)!
            resultNumber = resultNumber + number!
        }
        
        numberLabel.text = String(resultNumber)
        view.endEditing(true)
        resultNumber = 0
        
    }
    
    @objc func dismissKeyboard(){
        // キーボードを閉じる
        view.endEditing(true)
    }
    
}

