//
//  ViewController.swift
//  Prework-Updated
//
//  Created by Kevin Lin on 1/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipCalculatorLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentageLabelSlide: UILabel!
    @IBOutlet weak var tipControlSlide: UISlider!
    @IBOutlet weak var greenBlock: UIView!
    @IBOutlet weak var blueBlock: UIView!
    @IBOutlet weak var darkModeSwitch: UISwitch!
    @IBOutlet weak var split: UILabel!
    @IBOutlet weak var numberOfPeopleStepper: UIStepper!
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    @IBOutlet weak var each: UILabel!
    @IBOutlet weak var eachAmountLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Create tool bar above keyboard
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        
        // Items for tool bars
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(done))
        
        toolBar.items = [space, doneButton]
        toolBar.sizeToFit()
        billAmountTextField.inputAccessoryView = toolBar
        
        // Set the corners of the background blocks
        greenBlock.layer.cornerRadius = 25.0
        blueBlock.layer.cornerRadius = 25.0
        
    }
    
    // function for done button
    @objc private func done (){
        billAmountTextField.resignFirstResponder()
    }
    
    // function for dark mode selection
    @IBAction func darkModeAction(_ sender: Any) {
        if darkModeSwitch.isOn == true {
            // set background to dark gray
            view.backgroundColor = UIColor.darkGray
            // set title to white for visibility
            tipCalculatorLabel.textColor = UIColor.white
        }else{
            view.backgroundColor = UIColor.white
            tipCalculatorLabel.textColor = UIColor.black
        }
    }
    
    @IBAction func numberStepper(_ sender: Any) {
        numberOfPeopleLabel.text = String(Int(numberOfPeopleStepper.value))
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let numberOfPeople = Double(numberOfPeopleLabel.text!) ?? 0
        // Get total tip by multiplying tip * tipPercentage
        let tipPercetanges = [0.15, 0.18, 0.2]
        let tip = bill * tipPercetanges[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Get each person's payment by dividing total over number of people
        let each = total / numberOfPeople
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        // Update Each Amount
        eachAmountLabel.text = String(format: "$%.2f", each)
        
    }

    
    @IBAction func calculateTipSlide(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let numberOfPeople = Double(numberOfPeopleLabel.text!) ?? 0

        // Get total tip by multiplying tip * tip Percentage
        let tipPercentages = Double(tipControlSlide.value)
        let tip = bill * tipPercentages
        let total = bill + tip
        // Get each person's payment by dividing total over number of people
        let each = total / numberOfPeople
   
        // Update Slide Percentages
        percentageLabelSlide.text = String(format: "%3.2f%%",tipPercentages * 100)
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        // Update Each Amount
        eachAmountLabel.text = String(format: "$%.2f", each)
        
    }
}

