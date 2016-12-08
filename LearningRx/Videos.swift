//
//  Videos.swift
//  LearningRx
//
//  Created by Jake man on 11/14/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {
    
    @IBOutlet weak var openMenu: UIButton!
    
    var playerViewController = AVPlayerViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        openMenu.addTarget(revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        let filePath = Bundle.main.path(forResource: "video", ofType: "mp4")
        let videoURL = URL(fileURLWithPath: filePath!)
        let player = AVPlayer(url: videoURL)
        
        playerViewController.player = player
        self.present(playerViewController, animated: true) { () -> Void in
            self.playerViewController.player!.play()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
