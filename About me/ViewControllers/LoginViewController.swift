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
                aboutMeVC.userInfo = user
            } else if let myHobbyVC = viewController as? MyHobbyViewController {
                myHobbyVC.userInfo = user
            }
        }
    }

    
    // MARK: - Buttons
    

    @IBAction func logInButton(_ sender: Any) {
        if usernameTextField.text != user.login || passwordTextField.text != user.password {
            showAlert(title: "Oops!", message: "Invalid username or password")
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

