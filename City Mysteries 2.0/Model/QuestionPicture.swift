//
//  QuestionPicture.swift
//  City Mysteries 2.0
//
//  Created by Jenny Muter on 06/07/2019.
//  Copyright © 2019 Jenny Muter. All rights reserved.
//

import Foundation
import RealmSwift

class QuestionPicture: Object {
    
    @objc dynamic var questionID = UUID().uuidString
    @objc dynamic var gameInitialPicture : NSData? = nil
    var parentCategory = LinkingObjects(fromType: Question.self, property: "questionPictures")
    
    override static func primaryKey() -> String {
        return "questionID"
    }
    
}
