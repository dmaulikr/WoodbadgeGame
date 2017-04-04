//
//  ViewController.swift
//  Woodbadge
//
//  Created by Earl Bonovich on 4/4/17.
//  Copyright © 2017 Earl Bonovich. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var gbView: GameBoardView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        gbView.drawBoard()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

