//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Aditya Virbhadra Vyavahare on 02/09/22.
//

import UIKit

class ResultViewController: UIViewController {

    var totalPerPerson: Float?
    var numberOfSplits = 0
    var tipSelected = 0
    var userInput: Float?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = String(format: "%.2f", totalPerPerson!)
        settingsLabel.text = "Split ₹\(userInput!) between \(numberOfSplits) people, with \(tipSelected)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    
    */

}
