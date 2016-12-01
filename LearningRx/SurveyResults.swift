//
//  SurveyResults.swift
//  LearningRx
//
//  Created by Jake man on 11/2/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class SurveyResultsViewController: UIViewController, MFMailComposeViewControllerDelegate{
    //variables to store data from survey
    var attSkills = String()
    var proSpeedSkills = String()
    var audProSkills = String()
    var memSkills = String()
    var visProSkills = String()
    var logAndReasoningSkills = String()
    var senMotorSkills = String()
    var oppBehavior = String()
    var workOrAcaPerformance = String()
    var person = String()
    
    //outlets
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    @IBOutlet weak var lbl9: UILabel!
    @IBOutlet weak var personlbl: UILabel!
    @IBOutlet weak var emailString: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //labels set to data from survey
        lbl1.text = attSkills
        lbl2.text = proSpeedSkills
        lbl3.text = audProSkills
        lbl4.text = memSkills
        lbl5.text = visProSkills
        lbl6.text = logAndReasoningSkills
        lbl7.text = senMotorSkills
        lbl8.text = oppBehavior
        lbl9.text = workOrAcaPerformance
        navigationItem.hidesBackButton = true
        personlbl.text = "You Choose: " + person
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    @IBAction func sendEmail(_ sender: AnyObject) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        }
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients([self.emailString.text!])
        mailComposerVC.setSubject("LSRS Survey Results")
        mailComposerVC.setMessageBody("Attention skills: " + attSkills, isHTML: false)
        
        return mailComposerVC
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

