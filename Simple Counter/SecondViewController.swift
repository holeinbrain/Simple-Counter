//
//  SecondViewController.swift
//  Simple Counter
//
//  Created by Anton Levin on 09.11.2020.
//  Copyright © 2020 Anton Levin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var firstCount = 0
    var secondCount = 0
 
    
    @IBOutlet weak var firstLable: UILabel!
    @IBOutlet weak var secondLable: UILabel!
    @IBOutlet weak var textField1 : UITextField!
    @IBOutlet weak var textField2 : UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func firstPlus() {
        firstCount += 1
        firstLable.text? = "\(firstCount)"
    }
    
    
    @IBAction func secondPlus() {
        secondCount +=  1
        secondLable.text = "\(secondCount)"
    }
    
    @IBAction func firstMinus() {
        if firstCount <= 0 {
                return firstCount = 0
            } else {
            firstCount -= 1
            firstLable.text? = "\(firstCount)"
            }
    }
    
    @IBAction func secondMinus() {
        if secondCount <= 0 {
                return secondCount = 0
            } else {
            secondCount -= 1
            secondLable.text? = "\(secondCount)"
            }
    }
    
    @IBAction func shareButtonTwo(){
            let textActivityController2 = UIActivityViewController(activityItems: [textField1.text! + " : " + "\(firstCount)", textField2.text! + " : " + "\(secondCount)"  ], applicationActivities: nil)
            present(textActivityController2, animated: true, completion: nil)
        }

    }

