//
//  GameQuestion.swift
//  Woodbadge
//
//  Created by Earl Bonovich on 4/4/17.
//  Copyright © 2017 Earl Bonovich. All rights reserved.
//

import UIKit

class GameQuestion: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    var _QuestionItem : QuestionItem!;
    var _GameBoard : GameBoardView!;
    var _TextDisplay : UITextView!;

    
    init(frame: CGRect, Question: QuestionItem, GameBoard: GameBoardView) {
        super.init(frame: frame)
 
        self.backgroundColor = UIColor.black
        _QuestionItem = Question
               
        _TextDisplay = UITextView(frame: CGRect(x: 10, y: 10, width: 960, height: 400))
        _TextDisplay.textAlignment = NSTextAlignment.center
        _TextDisplay.textColor = UIColor.white
        _TextDisplay.backgroundColor = UIColor.black
        _TextDisplay.font = UIFont.systemFont(ofSize: 50, weight: 3)
        
        _TextDisplay.text = _QuestionItem.qText
        _TextDisplay.isEditable = false
        _TextDisplay.isSelectable = false
        self.addSubview(_TextDisplay)
    
        
        //Set Tap Gesture
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.addGestureRecognizer(tap)
        self.isUserInteractionEnabled = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func handleTap(_ sender: UITapGestureRecognizer) {
        self.removeGestureRecognizer(sender)
        
        _TextDisplay.text = _QuestionItem.aText
  
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handlePointTap(_:)))
        self.addGestureRecognizer(tap)
        self.isUserInteractionEnabled = true

        
        
    }

    func handlePointTap(_ sender: UITapGestureRecognizer) {
        self.removeGestureRecognizer(sender)
        
        _TextDisplay.removeFromSuperview()
        
        buildCritter(row: 0, col: 0, critter: .antelope)
        buildCritter(row: 1, col: 0, critter: .bear)
        buildCritter(row: 2, col: 0, critter: .beaver)
        buildCritter(row: 3, col: 0, critter: .bobwhite)
        buildCritter(row: 0, col: 1, critter: .buffalo)
        buildCritter(row: 1, col: 1, critter: .eagle)
        buildCritter(row: 2, col: 1, critter: .fox)
        buildCritter(row: 3, col: 1, critter: .owl)
        
    }
    
    func buildCritter(row: Int, col: Int, critter: WoodbadgeCritter) {
        let y = (row * 150) + 10;
        let x = (col * 500) + 10;
        
        let pnt = CGPoint(x: x, y: y)
        
        let vwScore = GameScoreTile(drawPoint: pnt, critter: critter)
        self.addSubview(vwScore)
    }

}
