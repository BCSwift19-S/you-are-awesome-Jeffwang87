//
//  ViewController.swift
//  About me
//
//  Created by wxt on 1/14/19.
//  Copyright © 2019 BChacks. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var index = 0
    var imageindex = -1
    var awesomePlayer = AVAudioPlayer()
    var soundindex = -1

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var Messagelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int{
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        }while lastNumber == newIndex
        return newIndex
    }
    func playSound(soundName: String){
        
        if let sound = NSDataAsset(name:soundName){
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("Error")
            }
        }
        else {
            print("Error")
        }
        
    }


    @IBAction func MessagebuttonPressed(_ sender: UIButton) {
        let messages = ["You AreFantastic!","You Are Great!","You Are Amazing!","You Are Awesome!"]
    
        index = nonRepeatingRandom(lastNumber: index, maxValue: 4)
        Messagelabel.text = messages[index]
        
        imageindex = nonRepeatingRandom(lastNumber: imageindex, maxValue: 4)
        awesomeImageView.image = UIImage(named: "image\(imageindex)")
        
        soundindex = nonRepeatingRandom(lastNumber: soundindex, maxValue: 3)
        
        let soundName = "sound\(soundindex)"
        playSound(soundName: soundName)
    }
}
