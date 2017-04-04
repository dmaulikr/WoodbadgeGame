//
//  GameBoardView.swift
//  Woodbadge
//
//  Created by Earl Bonovich on 4/4/17.
//  Copyright © 2017 Earl Bonovich. All rights reserved.
//

import UIKit


class GameBoardView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    //Quetion Array
    var questions = [QuestionItem]()
 
    
    func drawBoard () {
        
        questions.append(QuestionItem(row: 0, col: 0, questionValue: 100, questionText: "What is the Tiger Cub Motto", answerText: "Do Your Best"))
        questions.append(QuestionItem(row: 1, col: 0, questionValue: 200, questionText: "What is the minimum amout of time that a boy needs to be active as a Webelos Scout before he can earn the Webelos Badge", answerText: "3 Months"))
        questions.append(QuestionItem(row: 2, col: 0, questionValue: 300, questionText: "How many years must a Webelos den leader serve before he/she can earn the Webelos Den Leader Award", answerText: "One"))
        questions.append(QuestionItem(row: 3, col: 0, questionValue: 400, questionText: "Which Cu Scout sport subjects are copper colored and must be earned in a council-sponsored camp", answerText: "BB Shooting and Archery"))
        
        questions.append(QuestionItem(row: 0, col: 1, questionValue: 100, questionText: "Is a troop guide a memboer of the patrol leaders' council?", answerText: "Yes"))
        questions.append(QuestionItem(row: 1, col: 1, questionValue: 200, questionText: "What rank is the goal of the Boy Scouts of America that every Scout should earn", answerText: "First Class"))
        questions.append(QuestionItem(row: 2, col: 1, questionValue: 300, questionText: "What is the proper way for a oy Scout to salute the flag when he is out of uniform?", answerText: "Stand at attention with the right han over the heart."))
        questions.append(QuestionItem(row: 3, col: 1, questionValue: 400, questionText: "If the Scouts in a troop wear a neckerchief, are the adult leaders allowed to do so as well?", answerText: "Yes"))
        
        questions.append(QuestionItem(row: 0, col: 2, questionValue: 100, questionText: "What is a Varsity Scout unit called", answerText: "Team"))
        questions.append(QuestionItem(row: 1, col: 2, questionValue: 200, questionText: "What ages are boys in Varsity Scouting", answerText: "Ages 14 to 18"))
        questions.append(QuestionItem(row: 2, col: 2, questionValue: 300, questionText: "In addition to the Varsity Letter, what award can be earned ony by Varsity Scouts", answerText: "Denali Award"))
        questions.append(QuestionItem(row: 3, col: 2, questionValue: 400, questionText: "Name two of the five fields of emphasis in Varsity Scouting", answerText: "Service, High Adventure and Sports, Personal Development, Advancement, and Special Programs and Events"))
        
        questions.append(QuestionItem(row: 0, col: 3, questionValue: 100, questionText: "What is the first award specific to the Venturing program that a Venturer may earn", answerText: "Bronze"))
        questions.append(QuestionItem(row: 1, col: 3, questionValue: 200, questionText: "Venturing crews can be made up of three different gender groupings.  What are they?", answerText: "All Male, All Female, and Co-Ed"))
        questions.append(QuestionItem(row: 2, col: 3, questionValue: 300, questionText: "Can a Venturer be elected to the Order of the Arrow by the rest of the crew?", answerText: "No, but they can be membes if they were elected in the troop"))
        questions.append(QuestionItem(row: 3, col: 3, questionValue: 400, questionText: "What parts of the Venturing uniform must be worn by all members of a particular Venturing crew?", answerText: "Each crew sets its own standars for the uniforms its memers will wear."))
        
        questions.append(QuestionItem(row: 0, col: 4, questionValue: 100, questionText: "Can a district identification patch or district insignia be worn on a BSA Uniform", answerText: "No district identification or insignaia is to be worn on the uniform."))
        questions.append(QuestionItem(row: 1, col: 4, questionValue: 200, questionText: "Who does the district commissioner Work for?", answerText: "The council commissioner."))
        questions.append(QuestionItem(row: 2, col: 4, questionValue: 300, questionText: "Who make up the Key 3 in a district?", answerText: "District Executive, District Chairperson, District Commissioner"))
        questions.append(QuestionItem(row: 3, col: 4, questionValue: 400, questionText: "Who directly represents the district to an individual Scouting Unit", answerText: "The Unit Commissioner"))
        
        questions.append(QuestionItem(row: 0, col: 5, questionValue: 100, questionText: "What is the first training any adult leader should receive in Scouting?", answerText: "Fast Start"))
        questions.append(QuestionItem(row: 1, col: 5, questionValue: 200, questionText: "Who is responsible for making sure that the training occurs within a district", answerText: "The district training chairperson"))
        questions.append(QuestionItem(row: 2, col: 5, questionValue: 300, questionText: "What is the only training award of the Scouting movement that is the same in every country where it is awarded?", answerText: "Wood Badge"))
        questions.append(QuestionItem(row: 3, col: 5, questionValue: 400, questionText: "Name the award that a Scoutmaster can earn after three years a Scoutmaster and meeting additional requirements", answerText: "Scoutmaster's Key"))
        
        questions.append(QuestionItem(row: 0, col: 6, questionValue: 100, questionText: "What is the totem of Gilwell Park", answerText: "The axe and log"))
        questions.append(QuestionItem(row: 1, col: 6, questionValue: 200, questionText: "Baden-Powell believed that Scouting was a game with what", answerText: "A purpose"))
        questions.append(QuestionItem(row: 2, col: 6, questionValue: 300, questionText: "What is the Mission Statement of the Boy Scouts of America", answerText: "...to prepare young people to make ethical and moral choices over their lifetimes by instilling in them the values of the Scout Oath and Law "))
        questions.append(QuestionItem(row: 3, col: 6, questionValue: 400, questionText: "What are three characteristics of a vision", answerText: "Engages the heart and spirit, Leads toward a worthwhile goal, Gives meaning to an effort, Is simple, Is attainable, Can change"))
        
        
        for question in questions {
            let col = question.qCol
            let row = question.qRow
            
            let colX = 35 + (col * 140)
            let rowY = 100 + (row * 135)
            
            let newRect = CGRect(x: colX, y: rowY, width: 125, height: 125)
            let gSquare = GameSquare(frame: newRect, Question: question, gameBoard: self)
            
            self.addSubview(gSquare)
            question.qView = gSquare

        }
        
    }
    
    func displayQuestion (question: QuestionItem) {
        
        let qFrame = CGRect(x: 20, y: 20, width: 980, height: 650);
        let qView = GameQuestion(frame: qFrame, Question: question, GameBoard: self)
        self.addSubview(qView)
        
    }
    
}
