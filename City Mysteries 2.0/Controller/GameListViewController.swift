//
//  GameListViewController.swift
//  City Mysteries 2.0
//
//  Created by Jenny Muter on 06/07/2019.
//  Copyright © 2019 Jenny Muter. All rights reserved.
//
import Foundation
import RealmSwift

import UIKit

class GameListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
@IBOutlet weak var gameListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set as delegate and datasource
        gameListTableView.delegate = self
        gameListTableView.dataSource = self
        
        //Set the tap gesture
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tableViewTapped))
        gameListTableView.addGestureRecognizer(tapGesture)
        
        // Register city.xib
        
        gameListTableView.register(UINib(nibName: "GameCell", bundle: nil), forCellReuseIdentifier: "gameCell")
        
        configureTableView()
        
        gameListTableView.separatorStyle = .singleLine
    }
    
    // Declare CellForRowAtIndexPath
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath) as! GameCell
        
        cell.gameImage.backgroundColor = .blue
        cell.gameName.text = "The Medlock Murder"
        cell.gameDescription.text = "A diamond has been stolen. Can you find it?"
        
        
        return cell
        
    }
    
    //Declare Number of Rows in Section
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    //Declare TableViewTapped
    
    @objc func tableViewTapped() {
        print("The table view was tapped")
        performSegue(withIdentifier: "goToGameDescription", sender: self)
    }
    
    //Declare configure TableView
    
    func configureTableView() {
        gameListTableView.rowHeight = 160.0
    }
    
    //MARK: Declare TableSource Data Methods here
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! GameDescriptionViewController
        
    }
    
}

