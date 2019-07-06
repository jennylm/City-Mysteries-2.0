//
//  GameDescriptionViewController.swift
//  City Mysteries 2.0
//
//  Created by Jenny Muter on 06/07/2019.
//  Copyright © 2019 Jenny Muter. All rights reserved.
//
import UIKit

class GameDescriptionViewController: UIViewController {
    
    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameImage.sizeToFit()
        gameImage.clipsToBounds = true
        
        gameImage.layer.masksToBounds = true
        gameImage.layer.cornerRadius = 5
    }
    
}
