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
    var imageindex = -1

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var Messagelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func MessagebuttonPressed(_ sender: UIButton) {
        let messages = ["You AreFantastic!","You Are Great!","You Are Amazing!","You Are Awesome!"]
        var newIndex: Int
    
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
    } while index == newIndex
        index = newIndex
        Messagelabel.text = messages[index]
        
        repeat{
            newIndex = Int.random(in: 0..<4)
        }while imageindex == newIndex
        
        imageindex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageindex)")
    
}

}
