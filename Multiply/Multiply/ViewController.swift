//
//  ViewController.swift
//  Multiply
//
//  Created by Max Nguyen on 7/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField1: UITextField!
    @IBOutlet var numberTextField2: UITextField!
    @IBOutlet var operatorLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = ""
    }

    @IBAction func onCalculateButtonPressed(_ sender: UIButton) {
        let firstNumber = Double(numberTextField1.text!)!
        let secondNumber = Double(numberTextField2.text!)!
        var result:Double = 0
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            result = firstNumber * secondNumber
        case 1:
            result = firstNumber / secondNumber
        case 2:
            result = firstNumber + secondNumber
        default:
            result = firstNumber - secondNumber
        }
        resultLabel.text = result.description
        
        imageView.image = UIImage(named: "Iphone\(result)")
        
    }
    
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        operatorLabel.text = sender.titleForSegment(at: sender.selectedSegmentIndex)
    }
}

