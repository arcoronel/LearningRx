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
    var topics = ["Topic 1","Topic 2","Topic 3"]
    var identities = ["test","test2","test3"]
    var selectedIdentity = String()
    var selectedTopic = String()
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(topics.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath) as! ResearchTableViewCell
        
        cell.myLabel!.text = topics[indexPath.row]
//        selectedTopic = topics[indexPath.row]
//        self.performSegue(withIdentifier: "articleSegue", sender: self)
        return(cell)
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let pdfName = identities[indexPath.row]
//        let filePath = Bundle.main.path(forResource: pdfName, ofType: "pdf")
//        let fileURL = URL(fileURLWithPath: filePath!)
//        let request = URLRequest(url: fileURL)
//        myWebView.loadRequest(request)
        selectedTopic = topics[indexPath.row]
        selectedIdentity = identities[indexPath.row]
        self.performSegue(withIdentifier: "articleSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //send data to results page
        let ravc  : ResearchArticleViewController = segue.destination as! ResearchArticleViewController
        ravc.topic = selectedTopic
        ravc.fileName = selectedIdentity
    }
    //@IBOutlet weak var myWebView: UIWebView!
//    @IBAction func displayPDF(_ sender: AnyObject) {
//        let filePath = Bundle.main.path(forResource: "test", ofType: "pdf")
//        let fileURL = URL(fileURLWithPath: filePath!)
//        let request = URLRequest(url: fileURL)
//        myWebView.loadRequest(request)
//        
//    }
    
}

class DisplayArticleViewController: UIViewController {
    
    var fileName = String()
    
    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        let filePath = Bundle.main.path(forResource: fileName, ofType: "pdf")
        let fileURL = URL(fileURLWithPath: filePath!)
        let request = URLRequest(url: fileURL)
        myWebView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
