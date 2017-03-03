//
//  Videos.swift
//  LearningRx
//
//  Created by Jake man on 11/14/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var openMenu: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var playerViewController = AVPlayerViewController()
    var videoTitles = ["Demo","2 Minute","10 Minutes"]
    var videoURLs = ["video","1","1"]
    var videoLocation = ["Local","Internet","Internet"]
    
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
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(videoTitles.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath) as! VideoTableViewCell
        cell.myLabel!.text = videoTitles[indexPath.row]
        return(cell)
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if videoLocation[indexPath.row] == "Local"{
            let filePath = Bundle.main.path(forResource: videoURLs[indexPath.row], ofType: "mp4")
            let videoURL = URL(fileURLWithPath: filePath!)
            let player = AVPlayer(url: videoURL)
            
            playerViewController.player = player
            self.present(playerViewController, animated: true) { () -> Void in
                self.playerViewController.player!.play()
            }
        }
        else if videoLocation[indexPath.row] == "Internet" {
            let videoURL = NSURL(string: videoURLs[indexPath.row])
            let player = AVPlayer(url: videoURL! as URL)
            playerViewController.player = player
            self.present(playerViewController, animated: true){
                self.playerViewController.player!.play()
            }
        }
    }
}
