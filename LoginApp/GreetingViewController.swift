//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Anton Kuzmin on 13.02.2023.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let userName = userName {
            greetingLabel.text = "Welcome, \(userName)!"
        }
    }
}
