//
//  Person.swift
//  NamesToFaces
//
//  Created by Paulo Filho on 21/09/22.
//

import UIKit

class Person: NSObject, NSSecureCoding {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    required init(coder decoder: NSCoder) {
        name = decoder.decodeObject(of: [NSString.self], forKey: "name") as? String ?? ""
        image = decoder.decodeObject(of: [NSString.self], forKey: "image") as? String ?? ""
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(image, forKey: "image")
    }
    
    static var supportsSecureCoding: Bool {
        return true
    }
}
