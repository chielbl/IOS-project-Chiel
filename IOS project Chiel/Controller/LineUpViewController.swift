//
//  LineUpViewController.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 01/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import UIKit

class LineUpViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tblView: UITableView!
    var lineUpData = LineUpDAO.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return lineUpData.lineUp.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lineUpData.lineUp[section].lineUpList!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:LineUpTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellLineUp") as! LineUpTableViewCell
        
        var lineUpTime = lineUpData.lineUp[indexPath.section].lineUpList![indexPath.row]
        
        cell.lblName.text = lineUpTime.artist
        cell.lblTime.text = lineUpTime.time
        cell.lblStage.text = lineUpTime.stage
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return lineUpData.lineUp[section].day
    }
    


}
