//
//  ResearchArticles.swift
//  LearningRx
//
//  Created by Jake man on 11/11/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit

class ResearchArticleViewController: UIViewController {
    
    var topic = String()
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = topic
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
