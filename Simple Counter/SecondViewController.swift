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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func firstPlus(_ sender: Any) {
        firstCount += 1
        firstLable.text = "\(firstCount)"
    }
    
    
    @IBAction func secondPlus(_ sender: Any) {
        secondCount += 1
        secondLable.text = "\(secondCount)"
    }
    
    @IBAction func firstMinus(_ sender: Any) {
        if firstCount <= 0 {
                return firstCount = 0
            } else {
            firstCount -= 1
            firstLable.text = "\(firstCount)"
            }
    }
    
    @IBAction func secondMinus(_ sender: Any) {
        if secondCount <= 0 {
                return secondCount = 0
            } else {
            secondCount -= 1
            secondLable.text = "\(secondCount)"
            }
    }
    @IBAction func shareResults(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
