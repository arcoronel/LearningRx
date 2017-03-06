//
//  SurveyModel.swift
//  LearningRxCRM
//
//  Created by antiglow on 3/5/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//

import Foundation


// This could be changed later to import a question list.. right now it is just hard code
struct SurveyData {
    
    //Changed to an Array of tuples
    //Also this would be better suted to another controller or even a CSV uploadable file so the quesitons could be changed and uploaded by the user
    /* 1 = attentionSkills
     * 2 = proccessingSpeedSkills
     * 3 = auditoryProcessiongSkills
     * 4 = memorySkills
     * 5 = workOrAcadamicPreformance
     * 6 = visualProcessingSkills
     * 7 = logicAndReasoningSkills
     * 8 = sensoryMotorSkills
     * 9 = oppositionalBehavior
     */
    private var Questions: [(question: String, applicationArea: [Int])] = [
        ("Distracted from the task at hand", [1]),
        ("Reading is slow", [2]),
        ("Poor reading comprehension", [3,5]),
        ("Often asks to have things repeated", [4]),
        ("Has difficulty maintaining attention", [1]),
        ("Slow, deliberate speech", [2]),
        ("Makes spelling errors in written assignments", [3]),
        ("Has difficulty remembering telephone numbers", [4]),
        ("Has difficulty organizing activities", [1]),
        ("Completes math assignments slowly", [2]),
        ("Has difficulty sounding out unknown words", [3]),
        ("Needs to look multiple times when copying", [4]),
        ("Has difficulty doing two things at once", [1]),
        ("Takes a long time to complete tasks", [2]),
        ("Oral reading is slow or choppy", [3]),
        ("Has difficulty following verbal directions", [4,5]),
        ("Avoids prolonged mental effort", [1]),
        ("Generally does things slowly", [2,5]),
        ("Needs words repeated when taking spelling tests", [3]),
        ("Has difficulty recalling stories and jokes", [4]),
        ("Has difficulty remembering things just heard", [1]),
        ("Is often one of the last to complete tasks", [2]),
        ("Avoids reading", [3]),
        ("Gets poor test results when being tested for facts", [4,5]),
        ("Is impulsive", [1]),
        ("Avoids or has difficulty with video games", [2]),
        ("Has difficulty finding words for verbal expression", [3]),
        ("Needs to restudy or reread materials", [4]),
        ("Has poor study or work habits", [1]),
        ("Writing assignments take too long", [2,5]),
        ("Has difficulty reading or spelling phonetically", [3]),
        ("Has problems remembering names", [4]),
        ("Poor sense of direction/map reading skills", [6]),
        ("Poor math grades or test scores", [7,5]),
        ("Has poor handwriting", [8]),
        ("Swears or uses obscene language", [9]),
        ("Jigsaw puzzles are difficult or avoided", [6]),
        ("Has difficulty understanding stories or jokes", [7]),
        ("Squints, blinks, or rubs eyes when reading", [8]),
        ("Loses temper", [9]),
        ("Misreads similar words", [6]),
        ("Thoughts and materials are poorly organized", [7]),
        ("Has difficulty hearing", [8]),
        ("Argues with authority figures", [9]),
        ("Poor at or dislikes drawing", [6]),
        ("Poor at or avoids games like chess or checkers", [7]),
        ("Has poor coordination", [8]),
        ("Refuses requests or disobeys rules", [9]),
        ("Has difficulty with word math problems", [6]),
        ("Has problems seeing the â€œbig pictureâ€", [7]),
        ("Has speech difficulties", [8]),
        ("Deliberately does things that annoy others", [9]),
        ("Has difficulty creating pictures in the mind", [6]),
        ("Takes a while to catch on to new things", [7,5]),
        ("Complains about eye strain or fatigue", [8]),
        ("Blames others for mistakes", [9]),
        ("Lacks creativity or imagination in writing", [6]),
        ("Doesnâ€™t like card games", [7]),
        ("Is bothered by loud sounds", [8]),
        ("Is angry and resentful", [9]),
        ("Poor at problem solving", [6]),
        ("Has difficulty planning steps to solve problems", [7]),
        ("Skips words or lines when reading", [8]),
        ("Holds grudges or seeks revenge", [9,5])
    ]
    
    private var agreementText: [String] = [
        "Strongly Disagree",
        "Disagree",
        "In the Middle",
        "Agree",
        "Strongly Agree"
    ]
    
    func getQuestions() -> [(question: String, applicationArea: [Int])] {
        return Questions
    }
    
    func getAgreementOptions() -> [String] {
        return agreementText
    }
}
    
