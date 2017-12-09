//
//  ViewController.swift
//  Animations
//
//  Created by Charlie Cuddy on 12/7/17.
//  Copyright © 2017 Charlie Cuddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homerPic: UIImageView!
    
    var number = 0
    var timer = Timer()
    var speed = 0.1
    
    
    @IBAction func nextPic(_ sender: Any) {
        timer.invalidate()
        if number < 10 {
            number += 1
            homerPic.image = UIImage(named: "frame_\(number)_delay-0.01s.gif")
            print(number)
        } else {
            number = 0
        }
    }
    
    
    @objc func startPlayGif() {
        
        if number < 9 {
            number += 1
            homerPic.image = UIImage(named: "frame_\(number)_delay-0.01s.gif")
            print(number)
        } else {
            number = 0
        }
    }
    
    
    @IBAction func playGif(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: speed, target: self, selector: #selector(self.startPlayGif), userInfo: nil, repeats: true)
    }
    
    
    @objc func rewindPlayGif() {
        if number > 0 {
            number -= 1
            homerPic.image = UIImage(named: "frame_\(number)_delay-0.01s.gif")
            print(number)
        } else {
            number = 9
        }
    }
    
    @IBAction func rewindGif(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: speed, target: self, selector: #selector(self.rewindPlayGif), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseGif(_ sender: Any) {
        timer.invalidate()
    }
    
    /* ALTERNATE METHOD FOR NEXT BUTTON
     
     @IBOutlet weak var homerPic: UIImageView!
     
     var number = 1;
     
     @IBAction func nextPic(_ sender: Any) {
     
        homerPic.image = UIImage(named: "frame_\(number)_delay-0.01s.gif")
     
        number += 1
     
        print(number)
     
        if number == 10 {
     
            number = 0
        }
     }
 
     */
        

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

