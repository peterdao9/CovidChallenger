//
//  HighestScoreViewController.swift
//  CovidCHAL
//
//  Created by Dang Dao on 26/5/20.
//  Copyright © 2020 PeterDao. All rights reserved.
//

import UIKit

class HighestScoreViewController: UIViewController {

    @IBOutlet weak var HighestScore: UILabel!
    var highestScore:UserDefaults!
    override func viewDidLoad() {
        super.viewDidLoad()
        highestScore = UserDefaults()
        HighestScore.text = highestScore.string(forKey: "highestScore") ?? "0"
    }
}
