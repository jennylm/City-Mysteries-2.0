//
//  GameDescriptionViewController.swift
//  City Mysteries 2.0
//
//  Created by Jenny Muter on 06/07/2019.
//  Copyright © 2019 Jenny Muter. All rights reserved.
//
import UIKit
import RealmSwift

class GameDescriptionViewController: UIViewController {
    
    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var gameImageContainer: UIView!
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameDescription: UILabel!
    @IBAction func playButton(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ])
        
stackView.backgroundColor = .purple
        
stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
            ])
        
        gameImageContainer.backgroundColor = .purple
        
        gameImage.backgroundColor = .purple
        gameImage.layer.masksToBounds = true
        gameImage.layer.cornerRadius = 15

        gameDescription.text = "Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium. Qui animated corpse, cricket bat max brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Zonbi tattered for solum oculi eorum defunctis go lum cerebro. Nescio brains an Undead zombies. Sicut malus putrid voodoo horror. Nigh tofth eliv ingdead.?"
    }
    
}
