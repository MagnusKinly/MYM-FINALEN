//
//  Shoppen.swift
//  Monsterstartside
//
//  Created by Magnus Kinly on 28/04/15.
//  Copyright (c) 2015 MaaMetis. All rights reserved.
//

import UIKit

class Shoppen: UIViewController {
    
    
    // VARIABLER!!
    
    
    var  addSundhedsPoint: Int = 10
    var  Sundhedspoint: Int = 0
    var firstPrice: Int = 0
    var secondPrice: Int = 0
    var userSettings: Array<String>!
    var defaults: NSUserDefaults!
    var sundhedspointBanan: Int = 0
    
    
    //BUTTONS OG LABELS
    
    
  //  @IBOutlet weak var lblSundhedsPoint: UILabel!
    // @IBOutlet weak var btnStjerne: UIButton!
    
    
    
    
    //KODNING BLABLA VIRK
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        defaults = NSUserDefaults.standardUserDefaults()
        if let user = defaults.stringForKey("currentUser"){
            //   userSettings = split(user) {$0 == ":"}
            
            
            
            
            
            
            
            if defaults.objectForKey("Sundhedspoint") != nil{
                Sundhedspoint = defaults.integerForKey("Sundhedspoint")
                defaults.synchronize()
                
                NSLog("The value of integer Sundhedspoint is %i", Sundhedspoint);
            }
            
            if defaults.objectForKey("firstPrice") != nil{
                firstPrice = defaults.integerForKey("firstPrice")
                defaults.synchronize()
                
                NSLog("The value of integer firstPrice is %i", firstPrice);
                
                
            }
            
            if defaults.objectForKey("secondPrice") != nil{
                secondPrice = defaults.integerForKey("secondPrice")
                defaults.synchronize()
                
                NSLog("The value of integer secondPrice is %i", secondPrice);
                
                
            }
            
            if defaults.objectForKey("sundhedspointBanan") != nil{
                sundhedspointBanan = defaults.integerForKey("sundhedspointBanan")
                defaults.synchronize()
                
                NSLog("The value of integer sundhedspointBanan is %i", sundhedspointBanan);
                
            }
            
            
        }
        
        
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        defaults.setInteger(Sundhedspoint, forKey: "Sundhedspoint")
        defaults.setInteger(firstPrice, forKey: "firstPrice")
        defaults.setInteger(sundhedspointBanan, forKey: "sundhedspointBanan")
        defaults.setInteger(secondPrice, forKey: "secondPrice")
        defaults.synchronize()
        
        
    }
    
    
    
    
    // BUTTON PRESSED OG ALLE DE FUNKTIONER HERUNDER TIL ANDEN BUTTON
    
    
    @IBAction func btnBanan(sender: UIButton) {
        
        NSLog("The value of integer sundhedspointBanan is %i", sundhedspointBanan);
        NSLog("The value of integer secondPrice is %i", secondPrice);

        
        var alertView = UIAlertController(title: "Shop", message: "Køb pære for 40 point?", preferredStyle: .Alert)
        
        
        var myOkAction = UIAlertAction(title: "Køb", style: .Default) { UIAlertAction in
            NSLog("Action OK!!")
            
            var saveBananPoints: NSString = "\(self.sundhedspointBanan)"
            
            var saveSecondPrice: NSString = "\(self.secondPrice)"
            
            
            NSUserDefaults.standardUserDefaults().setObject(saveBananPoints, forKey: "currentuser")
            
            NSUserDefaults.standardUserDefaults().setObject(saveSecondPrice, forKey: "currentuser")
            
            NSUserDefaults.standardUserDefaults().synchronize()
            
            
        }
        
        var cancelAction = UIAlertAction(title: "Tilbage", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            NSLog("Tilbage Pressed")
            
            
            
            
        }
        
        
        alertView.addAction(myOkAction)
        alertView.addAction(cancelAction)
        
        
        
        presentViewController(alertView, animated: true, completion: nil)
        
        
        sundhedspointBanan = Int(4)
        secondPrice = Int(40)
        
    }
    
    
    
    
    
    
    // BUTTON PRESSED OG ALLE DE FUNKTIONER HERUNDER TIL STJERNE
    
    
    @IBAction func btnStjerne(sender: UIButton) {
        
        NSLog("The value of integer Sundhedspoint is %i", Sundhedspoint);
        NSLog("The value of integer firstPrice is %i", firstPrice);

        
        
        var alertView = UIAlertController(title: "Shop", message: "Køb tomat for 50?", preferredStyle: .Alert)
        
        
        var myOkAction = UIAlertAction(title: "Køb", style: .Default) { UIAlertAction in
            NSLog("Action OK!!")
            
          //  self.lblSundhedsPoint.text = "Yesss"
            
            
            var saveAddSundhedsPoint:NSString = "\(self.Sundhedspoint)"
            
            var savePris:NSString = "\(self.firstPrice)"
            
            
            
            NSUserDefaults.standardUserDefaults().setObject(saveAddSundhedsPoint, forKey: "currentuser")
            
            
            NSUserDefaults.standardUserDefaults().setObject(savePris, forKey: "currentuser")
            
            
            NSUserDefaults.standardUserDefaults().synchronize()
            
            
            
        }
        
        var cancelAction = UIAlertAction(title: "Tilbage", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            NSLog("Tilbage Pressed")
            
            
            
            
        }
        
        
        alertView.addAction(myOkAction)
        alertView.addAction(cancelAction)
        
        
        
        presentViewController(alertView, animated: true, completion: nil)
        
        Sundhedspoint = Int(5)
        firstPrice = Int(50)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
    }
    
    
    
}

