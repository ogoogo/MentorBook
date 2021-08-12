//
//  Mentor.swift
//  MentorBook
//
//  Created by 生越冴恵 on 2021/08/12.
//

import UIKit

class Mentor {
    var name:String!
    var course:String!
    var imageName:String!
    
    init(name:String,course:String,imageName:String) {
        self.name=name
        self.course=course
        self.imageName=imageName
    }
    func getImage()->UIImage{
        return UIImage(named: imageName)!
    }
}
