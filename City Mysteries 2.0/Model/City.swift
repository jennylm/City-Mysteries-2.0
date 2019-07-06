//
//  City.swift
//  City Mysteries 2.0
//
//  Created by Jenny Muter on 06/07/2019.
//  Copyright © 2019 Jenny Muter. All rights reserved.
//

import Foundation
import RealmSwift

class City : Object {
    
    @objc dynamic var cityID: Int = 0
    @objc dynamic var name : String = ""
    @objc dynamic var numberOfGames : String? = ""
    @objc dynamic var picture : NSData? = nil
    
    let games = List<Game>()
    
    override static func primaryKey() -> String {
        return "cityID"
    }
    
    
}
