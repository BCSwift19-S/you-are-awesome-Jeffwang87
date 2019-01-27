//
//  ViewController.swift
//  About me
//
//  Created by wxt on 1/14/19.
//  Copyright © 2019 BChacks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var index = 0

    @IBOutlet weak var Messagelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func MessagebuttonPressed(_ sender: UIButton) {
        let messages = ["You AreFantastic!","You Are Great!","You Are Amazing!","You Are Awesome!"]
        Messagelabel.text = messages.randomElement()!
    }
  
}

