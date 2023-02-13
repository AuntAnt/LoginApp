//
//  ViewController.swift
//  LoginApp
//
//  Created by Anton Kuzmin on 12.02.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func unwindTo(_ unwindSegue: UIStoryboardSegue) {
        passwordTF.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userName = userNameTF.text
    }
}

