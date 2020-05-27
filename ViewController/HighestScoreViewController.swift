//
//  HighestScoreViewController.swift
//  CovidCHAL
//
//  Created by Dang Dao on 26/5/20.
//  Copyright © 2020 PeterDao. All rights reserved.
//

import UIKit

class HighestScoreViewController: UIViewController {

    @IBOutlet weak var scoreBackground: UIImageView!
    @IBOutlet weak var HighestScore: UILabel!
    var highestScore:UserDefaults!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreBackground.layer.cornerRadius = 12
        highestScore = UserDefaults()
        HighestScore.text = highestScore.string(forKey: "highestScore") ?? "0"
    }
}
