//
//  SurveyStartViewController.swift
//  LearningRxCRM
//
//  Created by antiglow on 3/7/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//

import UIKit

class SurveyStartViewController: UIViewController {

    @IBOutlet weak var surveyUsername: UITextField!
    @IBOutlet weak var surveyTaker: UISegmentedControl!
    @IBOutlet weak var startSurvey: UIButton!
    
    var surveyTakerStrings: [String] = [
    "Self",
    "Parent/Guardian",
    "Other"
    ]
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()

        //Back Button
        if let splitView = self.navigationController?.splitViewController, !splitView.isCollapsed {
            self.navigationItem.leftBarButtonItem = splitView.displayModeButtonItem
        }
        //Set Nav Title
        self.navigationItem.title = "Start Survey"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc : SurveyViewController = segue.destination as! SurveyViewController
        vc.surveyUsername = surveyUsername.text!
        vc.surveyTaker = getSurveyTaker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getSurveyTaker() -> String {
        return surveyTakerStrings[surveyTaker.selectedSegmentIndex]
    }
    
    @IBAction func startSurveyClick (sender: UIButton) {
        
        let alertErrorController = UIAlertController(title: "Invalid Username", message: "Please Enter Username", preferredStyle: UIAlertControllerStyle.alert)
        alertErrorController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
        
        if (self.surveyUsername.hasText) {
            self.performSegue(withIdentifier: "toSurvey", sender: nil)
        } else {
            self.present(alertErrorController, animated: true, completion: nil)
        }
    }
}
