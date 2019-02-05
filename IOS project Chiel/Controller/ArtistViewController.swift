//
//  ArtistViewController.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 01/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import UIKit

class ArtistViewController: UIViewController, UITabBarDelegate, UITableViewDataSource, UISearchBarDelegate{
    
    
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var SBSearchBar: UISearchBar!
    let artists = ArtistsDAO.init()
    var artistList = [String]()
    var filteredArray = [String]()
    var shouldShowSearchResult = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        
    }
    
    //Function for adding search
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //Filteren van uit de lijst, naar de gezochte waarde
        filteredArray = artistList.filter({ (names:String) -> Bool in
            return names.lowercased().range(of: searchText.lowercased()) != nil
        })
        
        if searchText != ""{
            shouldShowSearchResult = true
            tblView.reloadData()
        }
        else{
            shouldShowSearchResult = false
            tblView.reloadData()
        }
    }
    //End function for adding search
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //Het aanpassan van regels naar gelang hoevoel woorden hij een gelijkenis vind in het gezocht woord
        if shouldShowSearchResult {
            return filteredArray.count
        }
        else{
            return artists.artists.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellArtists") as! TableViewCell
        
        if shouldShowSearchResult {
            let artist = artists.artists[indexPath.row]
            cell.lblTitle!.text = artist.name
            cell.imgView.image = UIImage.init(named: artist.image!)
            return cell
        }
        else{
            let artist = artists.artists[indexPath.row]
            artistList.append(artist.name!)
            
            cell.lblTitle!.text = artist.name
            cell.imgView.image = UIImage.init(named: artist.image!)
            return cell
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destionation:InfoViewController = segue.destination as! InfoViewController
        
        let selectedIndex = tblView.indexPathForSelectedRow
        let artist = artists.artists[selectedIndex!.row]
        
        destionation.selectedArtist = artist
    }
    
    //Wanneer de zoekbalk wordt aangeklikt om iets te zoeken wordt deze functie aangesproken
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        shouldShowSearchResult = true
        searchBar.endEditing(true)
        tblView.reloadData()
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


