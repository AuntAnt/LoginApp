//
//  MoreInfoViewController.swift
//  LoginApp
//
//  Created by Anton Kuzmin on 18.02.2023.
//

import UIKit

final class MoreInfoViewController: UIViewController {
    
    var user: User!
    
    @IBOutlet var moreInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "More Info"
        printInfoAbout()
    }
    
    private func printInfoAbout() {
        moreInfoLabel.text = """
        Hi! My name is \(user.person.name).
        
        Currently I work as \(user.person.job).
        I exited to learn Swift and iOS development and finally become software engineer.
        
        In my free time I like to play football and video games and programming.
        """
    }
}
