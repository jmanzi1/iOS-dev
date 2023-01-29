//
//  ViewController.swift
//  iOS_dev
//
//  Created by George Muyaneza on 2023/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var nationalityTextField: UITextField!
    
    @IBOutlet weak var genSegmentedControl: UISegmentedControl!
    @IBAction func morePetsStepper(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func selfIntro(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
               // In our example that is whether it is first, second, third or forth.
               let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
                //first generation or not?? Select what applies to you.
                let gen = genSegmentedControl.titleForSegment(at: genSegmentedControl.selectedSegmentIndex)

               // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "I go by \(firstNameTextField.text!) \(lastNameTextField.text!), born and raised \(nationalityTextField.text!) 🇷🇼 and I am \(gen!) college student attending \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you✨", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
               
       // print(introduction);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
        // Do any additional setup after loading the view.
    }


}

