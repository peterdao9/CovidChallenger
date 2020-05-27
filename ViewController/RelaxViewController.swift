//
//  RelaxViewController.swift
//  CovidCHAL
//
//  Created by Dang Dao on 25/5/20.
//  Copyright © 2020 PeterDao. All rights reserved.
//

import UIKit
import AVFoundation

class RelaxViewController: UIViewController {

    @IBOutlet weak var PlayButton: UIImageView!
    @IBOutlet weak var StopButton: UIImageView!
    @IBOutlet weak var Prepeller: UIImageView!
    
    var corner:Double = 0
    var player:AVAudioPlayer!
    var timer2:Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PlayButton.layer.cornerRadius = 33
        StopButton.layer.cornerRadius = 33
        
        let path:String = Bundle.main.path(forResource: "(No Copyright) Relaxing", ofType: ".mp3")!
        let url:URL = URL(fileURLWithPath: path)
        do {
        player = try AVAudioPlayer(contentsOf: url)
        } catch {
            print("Music Error")
        }
    }
    @IBAction func SwitchAction(_ sender: Any) {
        
        if let sw = sender as? UISwitch{
            if sw.isOn{
                timer2 = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { (time) in
                    self.corner += 0.2
                    self.Prepeller.transform = CGAffineTransform(rotationAngle: (CGFloat(self.corner) * .pi) / 180 )
                })
            } else {
                timer2.invalidate()
                timer2 = nil
            }
        }
    }
    
    @IBAction func playButton(_ sender: Any) {
        player.play()
    }
    
    @IBAction func stopButton(_ sender: Any) {
        player.stop()
    }
    
}
