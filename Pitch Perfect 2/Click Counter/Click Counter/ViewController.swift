//
//  ViewController.swift
//  Click Counter
//
//  Created by Christine Rehwinkel on 3/18/15.
//  Copyright (c) 2015 Christine Rehwinkel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label:UILabel!
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        label2 = UILabel()
        label2.frame = CGRectMake(30, 30, 100, 100)
        label2.text = "0"
        
        self.view.addSubview(label)
        self.view.addSubview(label2)
        
        var button = UIButton()
        button.frame = CGRectMake(150,250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        var decbutton = UIButton()
        decbutton.frame = CGRectMake(50,50, 60, 60)
        decbutton.setTitle("Decrement", forState: .Normal)
        decbutton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(decbutton)
        decbutton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }

    @IBAction func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        if( self.view.backgroundColor == UIColor.yellowColor()){
          self.view.backgroundColor=UIColor.redColor()
        }
        else{
           self.view.backgroundColor = UIColor.yellowColor()
        }
    }
    func decrementCount(){
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        self.view.backgroundColor=UIColor.yellowColor()
    }


}

