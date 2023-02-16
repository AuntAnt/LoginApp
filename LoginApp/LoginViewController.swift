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
    
    private let login = "1"
    private let pass = "1"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? WelcomeViewController else { return }
        greetingVC.userName = userNameTF.text
    }
    
    @IBAction func forgotButtonTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "User name is:", message: login)
        : showAlert(title: "Password is:", message: pass)
    }
    @IBAction func loginButtonTapped() {
        verifyLoginAndPassword()
    }
    
    @IBAction func unwindTo(_ unwindSegue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func verifyLoginAndPassword() {
        if userNameTF.text != login || passwordTF.text != pass {
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
