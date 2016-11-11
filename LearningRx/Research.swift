//
//  Research.swift
//  LearningRx
//
//  Created by Jacob Manzanares on 11/10/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit

class ResearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.hidesBackButton = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var myWebView: UIWebView!
    @IBAction func displayPDF(_ sender: AnyObject) {
        let filePath = Bundle.main.path(forResource: "test", ofType: "pdf")
        let fileURL = URL(fileURLWithPath: filePath!)
        let request = URLRequest(url: fileURL)
        myWebView.loadRequest(request)
        
    }
    
}
