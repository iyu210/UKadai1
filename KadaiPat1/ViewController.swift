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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)
    }

    @IBAction private func plusButton(_ sender: Any) {
        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0
        let num3 = Int(textField3.text ?? "") ?? 0
        let num4 = Int(textField4.text ?? "") ?? 0
        let num5 = Int(textField5.text ?? "") ?? 0
        numberLabel.text = String(num1 + num2 + num3 + num4 + num5)
        view.endEditing(true)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
