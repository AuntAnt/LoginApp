//
//  ViewController.swift
//  LoginApp
//
//  Created by Anton Kuzmin on 12.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User(
        login: "User",
        password: "pass",
        person: Person(
            name: "Anton",
            surname: "Kuzmin",
            company: "LANIT",
            job: "QA Automation Engineer",
            socials: [.telegram, .habrCareer]
        )
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.text = user.login
        passwordTF.text = user.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = "\(user.person.name) \(user.person.surname)"
            } else if let navigationVC = viewController as? UINavigationController {
                guard let aboutMeVc = navigationVC.topViewController as? AboutMeViewController else { return }
                aboutMeVc.user = user
            } else if let contactVC = viewController as? ContactsViewController {
                contactVC.user = user
            }
        }
    }
    
    @IBAction func forgotButtonTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "User name is:", message: user.login)
        : showAlert(title: "Password is:", message: user.password)
    }
    @IBAction func loginButtonTapped() {
        verifyLoginAndPassword()
    }
    
    @IBAction func unwindTo(_ unwindSegue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func verifyLoginAndPassword() {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                fieldToClear: passwordTF
            )
        } else {
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String, fieldToClear: UITextField? = nil) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            fieldToClear?.text = ""
        }
        
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
}
