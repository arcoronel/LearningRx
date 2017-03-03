//
//  Notes.swift
//  LearningRx
//
//  Created by Jacob Manzanares on 12/8/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit

class NotesViewController: UIViewController {
    
    @IBOutlet weak var openMenu: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.navigationController?.isNavigationBarHidden  = true
        openMenu.addTarget(revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
