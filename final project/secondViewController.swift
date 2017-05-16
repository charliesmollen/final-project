//
//  secondViewController.swift
//  final project
//
//  Created by Student on 5/1/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit


class secondViewController: ViewController {
    
    

    @IBOutlet var finalScore: UILabel!
    

   
    override func viewDidLoad() {
        
        totalScore = "Your final score is \(points)."
        super.viewDidLoad()
        
        self.finalScore.text = self.totalScore
    
    }
    
}


