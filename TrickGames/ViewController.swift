//
//  ViewController.swift
//  TrickGames
//
//  Created by 小川 僚太 on 2018/12/25.
//  Copyright © 2018 Ryota Ogawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      display.text = "PUSH START TO PLAY"
        
    
    
    }
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var stanceLabel: UILabel!
    
    var stance = ["SWITCH", ""]
    
    @IBOutlet weak var approachLabel: UILabel!
    
    let approach = ["FRONTSIDE", "BACKSIDE"]
    
    @IBOutlet weak var spinLabel: UILabel!
    
    var spin = ["180", "360", "540", "720", "900", "1080", "1260", "1440"]
    
    @IBOutlet weak var grabLabel: UILabel!
    
    let grab = ["INDY", "MUTE", "STALE", "MELON"]
    
    @IBAction func startButton(_ sender: Any) {
        
        stanceLabel.text = stance[Int(arc4random()) % stance.count]
        
        approachLabel.text = approach[Int(arc4random()) % approach.count]
        
        spinLabel.text = spin[Int(arc4random()) % spin.count]
        
        grabLabel.text = grab[Int(arc4random()) % grab.count]
    }
}

