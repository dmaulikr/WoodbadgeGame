//
//  GameScoreTile.swift
//  Woodbadge
//
//  Created by Earl Bonovich on 4/7/17.
//  Copyright © 2017 Earl Bonovich. All rights reserved.
//

import UIKit



class GameScoreTile: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    var critter: WoodbadgeCritter = .blank
    
    
    init(drawPoint: CGPoint, critter: WoodbadgeCritter) {
        let frame = CGRect(x: drawPoint.x, y: drawPoint.y, width: 400, height: 125)
        super.init(frame: frame)
        
        self.critter = critter
        var imgCritter: UIImage = #imageLiteral(resourceName: "symbol_bobwhite")
        
        switch self.critter {
            case .antelope : imgCritter = #imageLiteral(resourceName: "symbol_antelope")
            case .bear : imgCritter = #imageLiteral(resourceName: "symbol_bear")
            case .beaver : imgCritter = #imageLiteral(resourceName: "symbol_beaver")
            case .bobwhite : imgCritter = #imageLiteral(resourceName: "symbol_bobwhite")
            case .buffalo : imgCritter = #imageLiteral(resourceName: "symbol_buffalo")
            case .eagle : imgCritter = #imageLiteral(resourceName: "symbol_eagle")
            case .fox : imgCritter = #imageLiteral(resourceName: "symbol_fox")
            case .owl : imgCritter = #imageLiteral(resourceName: "symbol_owl")
            default: break
        }
        
        self.backgroundColor = UIColor.white
        
        let vCritter = UIImageView(image: imgCritter);
        vCritter.frame.origin.x = 5
        vCritter.frame.origin.y = 5


        
        self.addSubview(vCritter);
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
}
