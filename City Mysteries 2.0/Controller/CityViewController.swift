//
//  ViewController.swift
//  City Mysteries 2.0
//
//  Created by Jenny Muter on 06/07/2019.
//  Copyright © 2019 Jenny Muter. All rights reserved.
//

import UIKit
import RealmSwift

class CityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let realm = try! Realm()
    
    var cityArray : Results<City>?
    
//    @IBAction func addButton(_ sender: Any) {
//    }
//    
    let defaults = UserDefaults.standard

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
        
        loadItems()
        configureTableView()
        
        cityTableView.separatorStyle = .singleLine
        //getFilePath()
    }
    
    
    // Declare CellForRowAtIndexPath
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityCell
        
        cell.cityImage.backgroundColor = .green
        cell.cityName.text = cityArray?[indexPath.row].name ?? "No Cities Added"
        cell.cityGamesNumber.text = "\(cityArray?[indexPath.row].numberOfGames! ?? "No") Mysteries"
        cell.cityImage.image = UIImage(data: cityArray?[indexPath.row].picture! as! Data)
    
    
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
    
    //Get Realm
    
    func getFilePath() -> URL? {
        let realm = try! Realm()
        //print(realm.configuration.fileURL)
        return realm.configuration.fileURL
        
    }
    
    
//Data Manipulation Methods
    
    func save(city: City) {
        
        do {
            try realm.write {
                realm.add(city)
            }
        } catch {
            print("Error saving category\(error)")
        }
    }
    
    func loadItems() {
        
        cityArray = realm.objects(City.self)
        
        cityTableView.reloadData()
    }
    
    
//    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
//        
//        print("Bar Button Pressed")
//        
//        let newCity = City()
//        newCity.cityID = 5000
//        newCity.name = "Bristol"
//        newCity.numberOfGames = "Four"
//        
//        
//        if let img = UIImage(named: "lovesquare.png") {
//            newCity.picture = img.pngData() as NSData?
//            
//        }
//        self.save(city: newCity)
//        print(newCity.name)
//    
//    }
    
}


