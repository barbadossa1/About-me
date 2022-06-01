//
//  AboutMeViewController.swift
//  About me
//
//  Created by VK on 26.05.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var userInfo: UILabel!
    @IBOutlet var userImage: UIImageView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userImage.image = UIImage(named: user.person.image.first ?? "")
        userInfo.text = "\(user.person.aboutDescription)"

    }

}
