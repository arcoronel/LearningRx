//
//  Research.swift
//  LearningRx
//
//  Created by Jacob Manzanares on 11/10/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit

class ResearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var topics = ["Brain Training Magazine","Client Outcome Report","Root Cause Magazine National Version"]
    var identities = ["brain_training_magazine","ClientOutcomeReport","root_cause_magazine_National_version"]
    var selectedIdentity = String()
    var selectedTopic = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(topics.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath) as! ResearchTableViewCell
        cell.myLabel!.text = topics[indexPath.row]
        return(cell)
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedTopic = topics[indexPath.row]
        selectedIdentity = identities[indexPath.row]
        self.performSegue(withIdentifier: "displayArticleSegue", sender: self)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let davc  : DisplayArticleViewController = segue.destination as! DisplayArticleViewController
        davc.fileName = selectedIdentity
        davc.topicTitle = selectedTopic
    }
    
}

class DisplayArticleViewController: UIViewController {
    
    var fileName = String()
    var topicTitle = String()
    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var pdfTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        let filePath = Bundle.main.path(forResource: fileName, ofType: "pdf")
        let fileURL = URL(fileURLWithPath: filePath!)
        let request = URLRequest(url: fileURL)
        myWebView.loadRequest(request)
        pdfTitle.text = topicTitle
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
