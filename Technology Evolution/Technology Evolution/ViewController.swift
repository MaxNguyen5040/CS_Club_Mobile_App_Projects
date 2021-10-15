//
//  ViewController.swift
//  Technology Evolution
//
//  Created by Max Nguyen on 7/1/21.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet var slider: UISlider!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var displayLabel: UILabel!
    var iphoneOrMacbook = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateImage(number: 1)
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        var currentValue = slider.value
        currentValue = round(currentValue)
        let intValueOfCurrentValue = Int(currentValue)
        updateImage(number: intValueOfCurrentValue)
        
        
    }
    
    func updateImage1(number: Int){
        if iphoneOrMacbook{
            imageView.image = UIImage(named: "Iphone\(number)")

        }
        else{
            imageView.image = UIImage(named: "Macbook\(number)")
        }
    }
    
    
    func updateImage(number: Int){
        if iphoneOrMacbook {
            let type = "Iphone"
            var labelName = type + " " + String(number)
            var imageName = type + String(number)
            if labelName == "Iphone 9"{
                labelName = "Iphone 10"
                imageName = "Iphone10"
                displayMessage(yes: true, message: "Note: The Iphone 9 was discontinued")
            }
            if labelName != "Iphone 10"{
                displayMessage(yes: false, message: "")
            }
            label.text = labelName
            imageView.image = UIImage(named: imageName)
        }
        else{
            let type = "Macbook"
            var imageName = type + String(number)
            var year = 0;
            if number > 7{
                year = 2009 + number
            }
            else{
                year = 2009 + number - 1
            }
            var labelName = type + " Air " + String(year)
            if labelName == "Macbook Air 2016"{
                labelName = "Macbook Air 2015"
                imageName = "Macbook7"
            }
            
            if labelName == "Macbook Air 2017"{
                displayMessage(yes: true, message: "Note: The Macbook Air 2016 was discontinued")
            }
            if labelName != "Macbook Air 2017"{
                displayMessage(yes: false, message: "")
            }
            
            if labelName == "Macbook Air 2021"{
                labelName = "Macbook Air 2020"
                imageName = "Macbook11"
            }
            
            label.text = labelName
            imageView.image = UIImage(named: imageName)
        }
        
    }
    
    func displayMessage(yes: Bool, message: String) {
        if yes == true{
            displayLabel.textColor = .black
            displayLabel.text = message;
        }
        else{
            displayLabel.textColor = .white
        }
        
    }
    
    
    @IBAction func segmentControlChanged(_ sender: UISegmentedControl) {
        slider.value = 0
        displayLabel.textColor = .white
        if sender.selectedSegmentIndex == 0{
            imageView.image = UIImage(named: "Iphone1")
            iphoneOrMacbook = true
            updateImage(number: 1)
        }
        else{
            imageView.image = UIImage(named: "Macbook1")
            iphoneOrMacbook = false
            updateImage(number: 1)
        }
    }
}

