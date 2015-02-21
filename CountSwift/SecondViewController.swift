//
//  SecondViewController.swift
//  CountSwift
//
//  Created by Kotaro Suto on 2015/02/21.
//  Copyright (c) 2015年 Kotaro Suto. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var whenLabel:UILabel!
    @IBOutlet var whereLabel:UILabel!
    @IBOutlet var whoLabel:UILabel!
    @IBOutlet var whatLabel:UILabel!
    
    var whenArray:[String] = ["昨日、","一昨日、","十年前、"]
    var whereArray:[String] = ["公園で","学校で","駅で"]
    var whoArray:[String] = ["僕が","先生が","サラリーマンが"]
    var whatArray:[String] = ["寝ていた。","叫んでいた。","遊んでいた。"]
    
    var index:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func change(){
        whenLabel.text = whenArray[index]
        whereLabel.text = whereArray[index]
        whoLabel.text = whoArray[index]
        whatLabel.text = whatArray[index]
        
        index++
        
        if index>=3 {
            index = 0
        }
        
    }
    @IBAction func reset(){
        whenLabel.text = "----"
        whereLabel.text = "----"
        whoLabel.text = "----"
        whatLabel.text = "----"
        
        index = 0
    }
    @IBAction func random(){
        var whenIndex = Int(arc4random_uniform(3))
        var whereIndex = Int(arc4random_uniform(3))
        var whoIndex = Int(arc4random_uniform(3))
        var whatIndex = Int(arc4random_uniform(3))
        
        whenLabel.text = whenArray[whenIndex]
        whereLabel.text = whereArray[whereIndex]
        whoLabel.text = whoArray[whoIndex]
        whatLabel.text = whatArray[whatIndex]

        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
