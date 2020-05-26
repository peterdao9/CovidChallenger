//
//  StartViewController.swift
//  CovidCHAL
//
//  Created by Dang Dao on 25/5/20.
//  Copyright © 2020 PeterDao. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    var a: Int = 0
    var time = 0
    var timer = Timer()
    var y:CGFloat = 0
    @IBOutlet weak var Score: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { (time) in
            self.y += 10
            UIView.animate(withDuration: 0.2, animations: {
                self.Score.layer.transform = CATransform3DMakeTranslation(0, self.y, 0)
            })
        }
    }

    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        y = y - 50
        if self.y >= 400 {
            let sb = UIStoryboard(name: "Main", bundle: nil)
             let scoreScreen = sb.instantiateViewController(identifier: "Score") as! AchievementViewController
            scoreScreen.score2 = Score.text
            self.navigationController?.pushViewController(scoreScreen, animated: true)

        }else{
        
        if motion == UIEvent.EventSubtype.motionShake{
               a += 1
             Score.text = String(a)
            UIView.animate(withDuration: 0.05, animations: {
                           self.Score.layer.transform = CATransform3DMakeTranslation(0, self.y, 0)
                })
            }
        
        }
        
    }
    
            
}
