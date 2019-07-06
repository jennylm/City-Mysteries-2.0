//
//  ViewController.swift
//  City Mysteries 2.0
//
//  Created by Jenny Muter on 06/07/2019.
//  Copyright © 2019 Jenny Muter. All rights reserved.
//

import UIKit

class CityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var cityTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set as delegate and datasource
        cityTableView.delegate = self
        cityTableView.dataSource = self
        
        //Set the tap gesture
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tableViewTapped))
        cityTableView.addGestureRecognizer(tapGesture)
        
        // Register city.xib
        
        cityTableView.register(UINib(nibName: "CityCell", bundle: nil), forCellReuseIdentifier: "cityCell")
        
        configureTableView()
        
        cityTableView.separatorStyle = .singleLine
    }
    
    // Declare CellForRowAtIndexPath
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityCell
        
        cell.cityImage.backgroundColor = .green
        cell.cityName.text = "Manchester"
        cell.cityGamesNumber.text = "Three Games"
    
    
    return cell
    
    }

     //Declare Number of Rows in Section
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    //Declare TableViewTapped
    
    @objc func tableViewTapped() {
        print("The table view was tapped")
        performSegue(withIdentifier: "goToItems", sender: self)
    }
    
    //Declare configure TableView
    
    func configureTableView() {
        cityTableView.rowHeight = 160.0
    }
    
//MARK - TableViewDataSource Methods

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let destinationVC = segue.destination as! GameListViewController

    }
}


