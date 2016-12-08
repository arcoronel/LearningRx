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
    @IBOutlet weak var openMenu: UIButton!
    
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
        openMenu.addTarget(revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
    }
    
    @IBAction func sendEmail(_ sender: AnyObject) {
        if((emailString.text) != ""){
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        }
        } else{
            performSegue(withIdentifier: "surveyHome", sender: self)
        }
    }
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients([self.emailString.text!])
        mailComposerVC.setSubject("LSRS Survey Results")
        mailComposerVC.setMessageBody("Attention skills: " + attSkills + "\nProcessing Speed Skills: " + proSpeedSkills + "\nAuditory Processing Skills: "
            + audProSkills + "\nMemory Skills: " + memSkills + "\nVisual Processing Skills: " + visProSkills + "\nLogic And Reasoning Skills: " + logAndReasoningSkills
            + "\nSensory Motor Skills: " + senMotorSkills + "\nOppositional Behavior Skills: " + oppBehavior + "\nWork or Academic Performance: " + workOrAcaPerformance, isHTML: false)
        
        return mailComposerVC
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
        
        performSegue(withIdentifier: "surveyHome", sender: self)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

