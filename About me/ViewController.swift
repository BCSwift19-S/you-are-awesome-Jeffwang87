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
        let message1 = "You Are Awesome"
        let message2 = "You Are Great"
        let message3 = "You Are Amazing"
        
        if Messagelabel.text == message1{
            Messagelabel.text = message2
        }
        else if Messagelabel.text == message2{
            Messagelabel.text = message3
        }else{
            Messagelabel.text = message1
        }
        
    }
  
}

