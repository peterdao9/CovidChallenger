//
//  AchievementViewController.swift
//  CovidCHAL
//
//  Created by Dang Dao on 25/5/20.
//  Copyright © 2020 PeterDao. All rights reserved.
//

import UIKit

class AchievementViewController: UIViewController {
    
    @IBOutlet weak var score: UILabel!
    var score2:String!
    var c:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        score.text = score2
        
        }
    
}
    
