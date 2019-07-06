//
//  Game.swift
//  City Mysteries 2.0
//
//  Created by Jenny Muter on 06/07/2019.
//  Copyright © 2019 Jenny Muter. All rights reserved.
//

import Foundation
import RealmSwift

class Game : Object {
    
    @objc dynamic var gameID = UUID().uuidString
    @objc dynamic var name : String = ""
    @objc dynamic var gameInitialPicture : NSData? = nil
    @objc dynamic var gameDescriptionText : String = ""
    @objc dynamic var difficultyRating : Int = 0
    @objc dynamic var freeToPlay : Bool = true
    @objc dynamic var mentorPic : NSData? = nil
    var parentCategory = LinkingObjects(fromType: City.self, property: "games")
    let questions = List<Question>()
    
    override static func primaryKey() -> String {
        return "gameID"
    }
    
    
}
