//
//  ContactsViewController.swift
//  LoginApp
//
//  Created by Anton Kuzmin on 19.02.2023.
//

import UIKit

final class ContactsViewController: UIViewController {
    
    @IBAction func openLinkButton(_ sender: UIButton) {
         
        guard let url = URL(
            string: sender.tag == 0
            ? Social.telegram.rawValue
            : Social.habrCareer.rawValue
        ) else { return }
        
        UIApplication.shared.open(url)
    }
    
}
