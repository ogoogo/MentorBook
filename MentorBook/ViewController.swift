//
//  ViewController.swift
//  MentorBook
//
//  Created by 生越冴恵 on 2021/08/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView:UIImageView!
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var courseLabel:UILabel!
    
    var mentorArray:[Mentor]=[]
    
    var index:Int=0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mentorArray.append(Mentor(name: "ながた", course: "iPhone", imageName: "nagata.jpg"))
        mentorArray.append(Mentor(name: "りょう", course: "Unity", imageName: "ryo.jpg"))
        mentorArray.append(Mentor(name: "たいてぃ", course: "WebS,WebD", imageName: "taithi.jpg"))
        setUI()
    }
    
    @IBAction func mae(){
        index-=1
        if index == -1{
            index=2
        }
        setUI()
    }
    @IBAction func tsugi(){
        index+=1
        if index == 3{
            index=0
        }
        setUI()
    }
    func setUI()  {
        imageView.image=mentorArray[index].getImage()
        nameLabel.text=mentorArray[index].name
        courseLabel.text=mentorArray[index].course
    }


}

