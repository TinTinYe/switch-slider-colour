//
//  ViewController.swift
//  switch&slider&colour
//
//  Created by Yvonne on 2019/11/18.
//  Copyright © 2019 Yvonne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var rabbitImageView: UIImageView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var yellowSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var radiusSwitch: UISwitch!
    @IBOutlet weak var gradientSwitch: UISwitch!
    
    
    
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var yellowSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var radiusSlider: UISlider!
    @IBOutlet weak var gradientSlider: UISlider!
    
    
  
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }

    @IBAction func gradientSwitch(_ sender: UISwitch) {
        if gradientSwitch .isOn{
            gradientSlider.isEnabled = false
        }
        else{
            gradientSlider.isEnabled = true
        }
    }
    
    
    @IBAction func radiusNew(_ sender: UISlider) {
        self.rabbitImageView.layer.cornerRadius = CGFloat(radiusSlider.value)
        self.view.layer.cornerRadius = CGFloat(radiusSlider.value)
        self.image.layer.cornerRadius = CGFloat(radiusSlider.value)
    }
    
    @IBAction func gradientNew(_ sender: UISlider) {
        
//        let gradientLayer = CAGradientLayer()
//        let locationTop = round(10*gradientSlider.value)/10
//        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.red.cgColor]
//        gradientLayer.frame = self.gradientView.bounds
//        gradientLayer.locations = [0.0,NSNumber(value: locationTop)]
//        self.gradientView.layer.addSublayer(gradientLayer)
//
       
        let gradientNewLayer = CAGradientLayer()
        
        gradientNewLayer.frame = self.image.bounds
        
   //     let locationTop = round(100*gradientSlider.value)/100
        
        let locationTop = gradientSlider.value
        
   //     gradientNewLayer.locations = [0.00,NSNumber(value: locationTop)
  //     ]
        gradientNewLayer.locations = [0,NSNumber(value: locationTop)]
        
        gradientNewLayer.colors = [UIColor.yellow.cgColor,UIColor.red.cgColor]
        image.layer.addSublayer(gradientNewLayer)
        
    }
    
    
    
    
    @IBAction func switchs(_ sender: UISwitch) {
        if redSwitch .isOn{
            redSlider.isEnabled = false}
        else{
            redSlider.isEnabled = true
        }
        if yellowSwitch.isOn{
            yellowSlider.isEnabled = false
        }
        else{
            yellowSlider.isEnabled = true
        }
        if blueSwitch.isOn{
            blueSlider.isEnabled = false
        }
        else{
            blueSlider.isEnabled = true
        }
        
    }
    
    
    
    @IBAction func change(_ sender: UISlider) {
    //rabbitImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(yellowSlider.value), blue: CGFloat(blueSlider.value))
  
        rabbitImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(yellowSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        if sender == redSlider || sender == yellowSlider || sender == blueSlider {
            redLabel.text = String(redSlider.value)
            yellowLabel.text = String(yellowSlider.value)
            blueLabel.text = String(blueSlider.value)
        }
    
    
    }


    
    @IBAction func radiusSwitch(_ sender: UISwitch) {
        
        if radiusSwitch .isOn {
            radiusSlider.isEnabled = false
        }
        else {
            radiusSlider.isEnabled = true
        }
    }
    
  
    
}

