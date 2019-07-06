//
//  Question.swift
//  City Mysteries 2.0
//
//  Created by Jenny Muter on 06/07/2019.
//  Copyright © 2019 Jenny Muter. All rights reserved.
//

import Foundation
import RealmSwift

class Question : Object {
    
    @objc dynamic var questionID = UUID().uuidString
    @objc dynamic var questionText: String = ""
    @objc dynamic var answerText: String = ""
    @objc dynamic var hintUsed : Bool = false
    @objc dynamic var hintText : String = ""
    var parentCategory = LinkingObjects(fromType: Game.self, property: "questions")
    let questionPictures = List<QuestionPicture>()
    
    override static func primaryKey() -> String {
        return "questionID"
    }
    
    
    
}
