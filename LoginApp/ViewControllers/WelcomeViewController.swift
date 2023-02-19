//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Anton Kuzmin on 13.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(user.person.name) \(user.person.surname)"
    }
}
