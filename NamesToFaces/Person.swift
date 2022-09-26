//
//  Person.swift
//  NamesToFaces
//
//  Created by Paulo Filho on 21/09/22.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
