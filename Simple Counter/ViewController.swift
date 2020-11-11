//
//  ViewController.swift
//  Simple Counter
//
//  Created by Anton Levin on 09.11.2020.
//  Copyright © 2020 Anton Levin. All rights reserved.
//

import UIKit



class ViewController: UIViewController{
    var count = 0
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var textField : UITextField!
    @IBAction func unwindowToViewController (sender: UIStoryboardSegue) {
      
   }
    override func viewDidLoad() {
        super.viewDidLoad()
 
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
    
    
 
    
    @IBAction func buttonShare() {
        let textActivityController = UIActivityViewController(activityItems: [textField.text! + " : " + "\(count)" ], applicationActivities: nil)
        present(textActivityController, animated: true, completion: nil)
    }



}
