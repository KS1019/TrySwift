//
//  ViewController.swift
//  CountSwift
//
//  Created by Kotaro Suto on 2015/02/21.
//  Copyright (c) 2015年 Kotaro Suto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countLabel: UILabel!
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countLabel.textColor = UIColor.redColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus() {
        number  = number + 1
        countLabel.text = String(number)
        //countLabel.text = String(format:"%d",number)
        if(number>=10){
            countLabel.textColor = UIColor.blueColor()
        }else if number>=100 {
            countLabel.textColor = UIColor.orangeColor()
        }

    }
    @IBAction func minus(){
        number = number - 1
        countLabel.text = String(number)
        if number<=10{
            countLabel.textColor = UIColor.redColor()
        }
    }
    @IBAction func kakeru(){
        number = number * 2
        countLabel.text = String(number)
        if number>=10 {
            countLabel.textColor = UIColor.blueColor()
        }else if number>=100 {
            countLabel.textColor = UIColor.orangeColor()
        }
    }
    @IBAction func waru(){
        number = number / 2
        countLabel.text = String(number)
        if number<=10 {
            countLabel.textColor = UIColor.redColor()
        }else if number<=100 {
            countLabel.textColor = UIColor.blueColor()
        }
    }

}

