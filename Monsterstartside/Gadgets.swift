//
//  Gadgets.swift
//  Monsterstartside
//
//  Created by Magnus Kinly on 28/04/15.
//  Copyright (c) 2015 MaaMetis. All rights reserved.
//

import Foundation
import UIKit


class Gadgets: UIViewController {
    
    
    
    var defaults: NSUserDefaults!
    var userSettings: Array<String>!
    var firstPrice: Int = 0
    var secondPrice: Int = 0
    var showImageBeard: Bool = true
    
    var showImageAfro: Bool = true
    
    
    
    var beard = UIImage(named: "skæg.png") as UIImage!
    var afro = UIImage(named: "AfroCopy") as UIImage!



    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewWillAppear(animated: Bool) {
        defaults = NSUserDefaults.standardUserDefaults()
        if let user = defaults.stringForKey("currentUser"){
            
            
            
            if defaults.objectForKey("firstPrice") != nil{
                firstPrice = defaults.integerForKey("firstPrice")
                defaults.synchronize()
                
                
            }
            
            
            if defaults.boolForKey("showImageBeard") != true {
                
                showImageBeard = defaults.boolForKey("showImageBeard")
                defaults.synchronize()
                
                NSLog("The value of bool showImageBeard is %@", showImageBeard ? "True" : "False" )
                
            }
            
            if defaults.boolForKey("showImageAfro") != true {
            
            showImageAfro = defaults.boolForKey("showImageAfro")
                defaults.synchronize()
            NSLog("The value of bool showImageBeard is %@", showImageAfro ? "True" : "False" )
            
            
            }
            
            if defaults.objectForKey("secondPrice") != nil{
                secondPrice = defaults.integerForKey("secondPrice")
                defaults.synchronize()
                
                
            }



            
            
            
        }
        
    }
    
    
    
    
    

    override func viewWillDisappear(animated: Bool) {
        defaults.setInteger(firstPrice, forKey: "firstPrice")
        defaults.setInteger(secondPrice, forKey: "secondPrice")
        defaults.setBool(showImageBeard, forKey: "showImageBeard")
        defaults.setBool(showImageAfro, forKey: "showImageAfro")
        
    
    
    
    
    
    
    }
    
    

    @IBAction func btnskæg(sender: UIButton) {
        
        var alertView = UIAlertController(title: "Shop", message: "Køb skæg for 20 point?", preferredStyle: .Alert)
        
        
        var myOkAction = UIAlertAction(title: "Køb", style: .Default) { UIAlertAction in
            NSLog("Action OK!!")
            
            var saveFirstPrice: NSString = "\(self.firstPrice)"
            
            var saveShowImageBeard = self.showImageBeard
            
            
            NSUserDefaults.standardUserDefaults().setObject(saveFirstPrice, forKey: "currentuser")
            
            NSUserDefaults.standardUserDefaults().setBool(saveShowImageBeard, forKey: "currentuser")
            
            
            NSUserDefaults.standardUserDefaults().synchronize()
            
            
            
        }
        
        var cancelAction = UIAlertAction(title: "Tilbage", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            NSLog("Tilbage Pressed")
            
            
            
            
        }
        
        
        alertView.addAction(myOkAction)
        alertView.addAction(cancelAction)
        
        
        
        presentViewController(alertView, animated: true, completion: nil)
        
        firstPrice = Int(20)
        showImageBeard = true
        
            
    }
    
    
    @IBAction func btnAfro(sender: UIButton) {
        
        var alertView = UIAlertController(title: "Shop", message: "Køb afro for 50 point?", preferredStyle: .Alert)
        
        
        var myOkAction = UIAlertAction(title: "Køb", style: .Default) { UIAlertAction in
            NSLog("Action OK!!")
            
            var saveSecondPrice: NSString = "\(self.secondPrice)"
            
            var saveShowImageAfro = self.showImageAfro
            
            
            NSUserDefaults.standardUserDefaults().setObject(saveSecondPrice, forKey: "currentuser")
            
            NSUserDefaults.standardUserDefaults().setBool(saveShowImageAfro, forKey: "currentuser")
            
            
            NSUserDefaults.standardUserDefaults().synchronize()
            
            
            
        }
        
        var cancelAction = UIAlertAction(title: "Tilbage", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            NSLog("Tilbage Pressed")
            
            
            
            
        }
        
        
        alertView.addAction(myOkAction)
        alertView.addAction(cancelAction)
        
        
        
        presentViewController(alertView, animated: true, completion: nil)
        
        secondPrice = Int(50)
        showImageAfro = true

        
        
        
        
        
        
    }





}





