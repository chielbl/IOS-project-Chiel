//
//  SnackViewController.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 01/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import UIKit

class SnackViewController: UIViewController, UITableViewDataSource, UITabBarDelegate {
    
    
    @IBOutlet weak var tblView: UITableView!
    let snacks = SnackDAO.init()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return snacks.snacks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellSnacks") as! TableViewCell
        
        let snack = snacks.snacks[indexPath.row]
        
        cell.lblTitle!.text = snack.name
        cell.imgView.image = UIImage.init(named: snack.image!)
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
