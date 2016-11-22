//
//  ViewController.swift
//  LearningRx
//
//  Created by Jake man on 10/5/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var open: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.hidesBackButton = true
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    var playerViewController = AVPlayerViewController()
//    @IBAction func playVideo(_ sender: AnyObject) {
//        let filePath = Bundle.main.path(forResource: "video", ofType: "mp4")
//        let videoURL = URL(fileURLWithPath: filePath!)
//        let player = AVPlayer(url: videoURL)
//        
//        playerViewController.player = player
//        self.present(playerViewController, animated: true) { () -> Void in
//            self.playerViewController.player!.play()
//        }
//    }
    
    

}

