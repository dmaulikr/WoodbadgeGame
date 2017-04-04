//
//  GameSquare.swift
//  Woodbadge
//
//  Created by Earl Bonovich on 4/4/17.
//  Copyright © 2017 Earl Bonovich. All rights reserved.
//

import UIKit

class GameSquare: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    var gBoard: GameBoardView?
    var _Question: QuestionItem?
    
    init(frame: CGRect, Question: QuestionItem, gameBoard: GameBoardView) {
        super.init(frame: frame)
        
        gBoard = gameBoard;
        _Question = Question;
        _Question?.qView = self;
        
        
        //Set Full Square
        self.backgroundColor = UIColor.white
       
        //Set Text Label
        let lblValue = UILabel(frame: CGRect(x: 12.5, y: 50.0, width: 100, height: 25.0))
        lblValue.textAlignment = NSTextAlignment.center
        lblValue.font = UIFont.systemFont(ofSize: 26, weight: 3)
        let strValue = String(format: "$%d", _Question!.qValue)
        lblValue.text = strValue
        self.addSubview(lblValue)
        
        //Set Tap Gesture
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.addGestureRecognizer(tap)
        self.isUserInteractionEnabled = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func handleTap(_ sender: UITapGestureRecognizer) {
        gBoard?.displayQuestion(question: _Question!)
        
    }
    
}

