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
    
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    private let login = "1"
    private let pass = "1"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        verifyLoginAndPassword()
        
        guard let greetingVC = segue.destination as? WelcomeViewController else { return }
        greetingVC.userName = userNameTF.text
    }
    
    @IBAction func forgotButtonTapped(_ sender: UIButton) {
        switch sender {
        case forgotUserNameButton:
            showAlert(title: "User name is:", message: login)
        default:
            showAlert(title: "Password is:", message: pass)
        }
    }
    
    @IBAction func unwindTo(_ unwindSegue: UIStoryboardSegue) {
        passwordTF.text = ""
    }
    
    private func verifyLoginAndPassword() {
        if userNameTF.text != login || passwordTF.text != pass {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
        }
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            self.passwordTF.text = ""
        }
        
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
}
