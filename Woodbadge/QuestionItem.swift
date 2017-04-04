//
//  QuestionItem.swift
//  Woodbadge
//
//  Created by Earl Bonovich on 4/4/17.
//  Copyright © 2017 Earl Bonovich. All rights reserved.
//

import Foundation


class QuestionItem {
    var qRow: Int = 0
    var qCol: Int = 0
    var qValue: Int = 0
    var qText: String = "Test"
    var aText: String = "NotAnswered"
    var winner: Int = 0
    var qView: GameSquare?
    
    
    init(row: Int, col: Int, questionValue: Int, questionText: String, answerText: String) {
        qValue = questionValue
        qText = questionText
        aText = answerText
        
        qRow = row
        qCol = col
        
    }
    
}

