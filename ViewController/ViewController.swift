//
//  ViewController.swift
//  CovidCHAL
//
//  Created by Dang Dao on 19/5/20.
//  Copyright © 2020 PeterDao. All rights reserved.
//

import Foundation
import UIKit
import SafariServices

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var homeTableView: UITableView!
    var stateImage: [String] = ["AU", "VIC", "NSW", "QLD", "SA", "NT", "WA", "TAS", "ACT"]
    var stateName: [String] = ["Australia", "Victoria", "New South Wales", "Queensland", "South Australia", "Northern Territory","West Australia", "Tasmania", "Australian Capital Territory"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTableView.dataSource = self
        homeTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Update the latest COVID-19 news by states:"
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stateImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! HomeTableViewCell
        cell.countryView.image = UIImage(named: stateImage[indexPath.row])
        cell.stateName.text = stateName[indexPath.row]
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            showSafariVC(for: "https://www.health.gov.au/news/health-alerts/novel-coronavirus-2019-ncov-health-alert/coronavirus-covid-19-news-and-media")
        }
        if indexPath.row == 1 {
            showSafariVC(for: "https://www.dhhs.vic.gov.au/coronavirus")
        }
        if indexPath.row == 2 {
            showSafariVC(for: "https://www.health.nsw.gov.au/Infectious/covid-19/Pages/default.aspx")
        }
        if indexPath.row == 3 {
            showSafariVC(for: "https://www.qld.gov.au/health/conditions/health-alerts/coronavirus-covid-19")
        }
        if indexPath.row == 4 {
            showSafariVC(for: "https://www.sahealth.sa.gov.au/wps/wcm/connect/public+content/sa+health+internet/conditions/infectious+diseases/covid+2019")
        }
        if indexPath.row == 5 {
            showSafariVC(for: "https://coronavirus.nt.gov.au/")
        }
        if indexPath.row == 6 {
            showSafariVC(for: "https://www.wa.gov.au/government/covid-19-coronavirus")
        }
        if indexPath.row == 7 {
            showSafariVC(for: "https://coronavirus.tas.gov.au/")
        }
        if indexPath.row == 8 {
            showSafariVC(for: "https://www.covid19.act.gov.au/")
        }
    }
    func showSafariVC(for url: String){
        guard let url = URL(string: url) else {
            return
        }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
}



