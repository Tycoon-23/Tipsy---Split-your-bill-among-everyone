//
//  ViewController.swift
//  Tipsy
//
//  Created by Aditya Virbhadra Vyavahare on 02/09/22.
//

import UIKit

class CalculatorViewController: UIViewController {

    var tipSelected: Float = 0.0
    var percentTip: Float = 0.0
    var totalPerPerson: Float = 0.0
    var userInput: Float = 0.0
    var splitNumber: Float = 0.0
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billTextField.becomeFirstResponder()   //open keyboard on app startup
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.resignFirstResponder()    //close keyboard
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        tipSelected = (sender.currentTitle! as NSString).floatValue
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = Int(sender.value).description   //update value on-screen
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        percentTip = (tipSelected/100)
        userInput = (billTextField.text! as NSString).floatValue
        splitNumber = (splitNumberLabel.text! as NSString).floatValue
        totalPerPerson = (userInput + (userInput * percentTip))/splitNumber
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
        //print(totalPerPerson)
        //print(billTextField.text!)
        //print(splitNumberLabel.text!)
        //print(percentTip)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.totalPerPerson = totalPerPerson
        destinationVC.numberOfSplits = Int(splitNumber)
        destinationVC.tipSelected = Int(tipSelected)
        destinationVC.userInput = userInput
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

