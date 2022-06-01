//
//  MyHobbyViewController.swift
//  About me
//
//  Created by VK on 26.05.2022.
//

import UIKit

class MyHobbyViewController: UIViewController {
    
    @IBOutlet var userHobbyText: UILabel!
    
    @IBOutlet var swiftImage: UIImageView!
    @IBOutlet var xcodeImage: UIImageView!
    
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userHobbyText.text = "\(user.person.hobbyDescription)"
        swiftImage.image = UIImage(named: user.person.image[1])
        xcodeImage.image = UIImage(named: user.person.image.last ?? "")
        
    }

}
