//
//  ViewController.swift
//  About me
//
//  Created by VK on 24.05.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    // MARK: Calling the model instance
    
    private let user = User.getUsers()
    
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
    
        // MARK: iterating through the viewControllers array
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomePageViewController {
                welcomeVC.userfullname = user
            } else if let aboutMeVC = viewController as? AboutMeViewController {
                aboutMeVC.user = user
            } else if let myHobbyVC = viewController as? MyHobbyViewController {
                myHobbyVC.user = user
            }
        }
    }
}
    
    // MARK: - Buttons
    
    @IBAction func signIn() {
        if usernameTextField.text != user.login || passwordTextField.text != user.password {
            showAlert(title: "Oops...", message: "Invalid username or password")
        }
    }
    
    @IBAction func showAlertForgotButton(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(title: "Hey!", message: "Your username is \(user.login)")
        } else {
            showAlert(title: "Hey!", message: "Your password is \(user.password)")
        }
    }
    
    // MARK: - Alert
    
    private func showAlert (title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    
}

