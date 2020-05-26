//
//  AchievementViewController.swift
//  CovidCHAL
//
//  Created by Dang Dao on 25/5/20.
//  Copyright © 2020 PeterDao. All rights reserved.
//

import UIKit

class AchievementViewController: UIViewController {
    
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var score: UILabel!
    var score2:String!
    var highestScore:UserDefaults!
    var highest:Int = 0
    var highScore:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score.text = score2
        highestScore = UserDefaults()
        self.highScore = highestScore.string(forKey: "highestScore") ?? "0"
        highest = Int(highScore)!
        
        if highest <= Int(score2)!{
            highest = Int(score2)!
        }
        
        facebookButton.layer.cornerRadius = 8
        facebookButton.tintColor = UIColor.white
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        highestScore.set(String(highest), forKey: "highestScore")
    }
    
    @IBAction func ShareonFacebook(_ sender: Any) {
    }
}
    
