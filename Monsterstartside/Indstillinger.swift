//
//  Indstillinger.swift
//  Monsterstartside
//
//  Created by Magnus Kinly on 27/04/15.
//  Copyright (c) 2015 MaaMetis. All rights reserved.
//

import Foundation
import UIKit


class Indstillinger: UIViewController {


    var currentage: Int = 13
    var currentWeight: Int = 35
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    @IBAction func sliderAgeChanged(sender: UISlider) {
        
        currentage = Int(sender.value)
        
        label.text = "\(currentage)"
    }
    @IBAction func sliderWeightChanged(sender: UISlider) {
        currentWeight = Int(sender.value)
        labelWeight.text = "\(currentWeight)"
    }
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    
    
    
    
    




    }



