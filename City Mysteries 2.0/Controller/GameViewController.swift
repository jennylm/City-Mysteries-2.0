//
//  GameViewController.swift
//  City Mysteries 2.0
//
//  Created by Jenny Muter on 06/07/2019.
//  Copyright © 2019 Jenny Muter. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
//    @IBOutlet weak var slideScrollView: UIScrollView!
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var questionText: UILabel!
    @IBAction func answerTextField(_ sender: Any) {
    }
    @IBOutlet weak var hintButton: UIImageView!
    @IBOutlet weak var hintText: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //slideScrollView.delegate = self
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
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

       }
}
