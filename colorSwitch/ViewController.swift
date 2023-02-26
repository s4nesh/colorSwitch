//
//  ViewController.swift
//  colorSwitch
//
//  Created by Sanesh Gobin on 2023/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorBox: UIView!
    @IBOutlet var redSwitch: UISwitch!
    @IBOutlet var greenSwitch: UISwitch!
    @IBOutlet var blueSwitch: UISwitch!
    
    var toggleRedSwitch = false
    var toggleGreenSwitch = false
    var toggleBlueSwitch = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        switchAllOff()
    }

    func switchAllOff() {
        redSwitch.setOn(false, animated: true)
        greenSwitch.setOn(false, animated: true)
        blueSwitch.setOn(false, animated: true)
    }
    
    @IBAction func redSwitchToggle(_ sender: Any) {
        toggleRedSwitch.toggle()
        if redSwitch.isOn {
            switchAllOff()
            redSwitch.setOn(true, animated: true)
            colorBox.backgroundColor = .red
            redSwitch.onTintColor = .red
        } else {
            redSwitch.setOn(false, animated: true)
            colorBox.backgroundColor = .black
        }
        
    }
    
    
    @IBAction func greenSwitchToggle(_ sender: Any) {
        toggleGreenSwitch.toggle()
        if greenSwitch.isOn {
            switchAllOff()
            greenSwitch.setOn(true, animated: true)
            colorBox.backgroundColor = .green
            greenSwitch.onTintColor = .green
        } else {
            greenSwitch.setOn(false, animated: true)
            colorBox.backgroundColor = .black
        }
    }
    
    
    @IBAction func blueSwitchToggle(_ sender: Any) {
        toggleBlueSwitch.toggle()
        if blueSwitch.isOn {
            switchAllOff()
            blueSwitch.setOn(true, animated: true)
            colorBox.backgroundColor = .blue
            blueSwitch.onTintColor = .blue
        } else {
            blueSwitch.setOn(false, animated: true)
            colorBox.backgroundColor = .black
        }
    }
    
    
}

