//
//  AchievementViewController.swift
//  CovidCHAL
//
//  Created by Dang Dao on 25/5/20.
//  Copyright © 2020 PeterDao. All rights reserved.
//

import UIKit

class AchievementViewController: UIViewController {
    
   
    @IBOutlet weak var scoreBackground: UIImageView!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var view2: UIView!
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
        
        scoreBackground.layer.cornerRadius = 15
        shareButton.layer.cornerRadius = 8
        shareButton.tintColor = UIColor.white
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        highestScore.set(String(highest), forKey: "highestScore")
    }
    
    @IBAction func ShareButton(_ sender: Any) {
        let renderer = UIGraphicsImageRenderer(size: view2.bounds.size)
        let screenImage = renderer.image { ctx in
            view2.drawHierarchy(in: view2.bounds, afterScreenUpdates: true)
        }
        
        let content:String = "I got " + score2 + " point on Covid Challenger. You can update latest Covid news, relax and overcome my score by this app."
        let vc = UIActivityViewController(activityItems: [content, screenImage], applicationActivities: [])
        if let popoverController = vc.popoverPresentationController{
            popoverController.sourceView = self.view
            popoverController.sourceRect = self.view.bounds
        }
        self.present(vc, animated: true, completion: nil)
    }
}
    
