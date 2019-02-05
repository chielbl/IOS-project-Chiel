//
//  InfoViewController.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 01/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var IMGView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblGenre: UILabel!
    
    var selectedArtist:Artist?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text = selectedArtist!.name
        lblGenre.text = selectedArtist!.genre
        IMGView.image = UIImage.init(named: selectedArtist!.image!)
        
        // Do any additional setup after loading the view.
    }
    

}
