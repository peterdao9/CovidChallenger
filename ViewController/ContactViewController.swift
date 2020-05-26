//
//  ContractViewController.swift
//  CovidCHAL
//
//  Created by Dang Dao on 22/5/20.
//  Copyright © 2020 PeterDao. All rights reserved.
//

import UIKit
import MessageUI

class ContractViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func sandMailButton(_ sender: Any) {
        let mailCompese = MFMailComposeViewController()
        mailCompese.mailComposeDelegate = self
        mailCompese.setToRecipients(["daohaidang1996@gmail.com"])
        mailCompese.setSubject("Copyright of Covid Challeger")
        mailCompese.setMessageBody("", isHTML: false)
        
        if MFMailComposeViewController.canSendMail(){
            self.present(mailCompese, animated: true, completion: nil)
        }
        else{
            print("Mail Error")
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func contactButton1(_ sender: Any) {
        if let phoneurl = URL(string: "TEL://000"){
            UIApplication.shared.open(phoneurl)
            
        }
        
    }
    
}
