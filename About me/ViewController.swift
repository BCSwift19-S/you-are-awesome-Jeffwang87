//
//  ViewController.swift
//  About me
//
//  Created by wxt on 1/14/19.
//  Copyright © 2019 BChacks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Messagelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func MessagebuttonPressed(_ sender: UIButton) {
        if Messagelabel.text == "You Are Awesome"{
            Messagelabel.text = "You Are Great!"
        }
        else if Messagelabel.text == "You Are Great!"{
            Messagelabel.text = "You Are Amazing! "
        }else{
            Messagelabel.text = "You Are Awesome"
        }
        
    }
  
}

