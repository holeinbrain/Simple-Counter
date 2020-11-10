//
//  ViewController.swift
//  Simple Counter
//
//  Created by Anton Levin on 09.11.2020.
//  Copyright © 2020 Anton Levin. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
 
    var count = 0
    @IBOutlet weak var lable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }

    @IBAction func unwindowToViewController (sender: UIStoryboardSegue) {
       
    }
    
    @IBAction func shareButton(_ sender: Any) {
        
    }
    
    @IBAction func plusButton(_ sender: Any) {
        count += 1
        lable.text = "\(count)"
        
    }
    @IBAction func minusButton(_ sender: Any) {
        if count <= 0 {
            return count = 0
        } else {
        count -= 1
        lable.text = "\(count)"
        }
    }
}

