//
//  ViewController.swift
//  Flashlight
//
//  Created by Max Nguyen on 6/30/21.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    

    @IBOutlet var button1: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()

        
    }
    
    fileprivate func updateUI() {
        if button1.isOn {
            let red = CGFloat.random(in:0...1)
            let blue = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let randomColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
            view.backgroundColor = lightOn ? randomColor : .black
        }
        else {
            view.backgroundColor = lightOn ? .white : .black
        }
        
    }
    
    @IBAction func onButtonPressed(_ sender: UISwitch) {
        lightOn.toggle()
        updateUI()
    }
    
    

}



    





