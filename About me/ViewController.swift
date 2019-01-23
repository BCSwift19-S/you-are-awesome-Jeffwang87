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
        Messagelabel.text = "You Are Awesome"
        Messagelabel.textColor = UIColor.red
    }
    @IBAction func Anothermessagebuttonpressed(_ sender: UIButton) {
        Messagelabel.text = "You Are Great"
        Messagelabel.textColor = UIColor.blue
    }
}

