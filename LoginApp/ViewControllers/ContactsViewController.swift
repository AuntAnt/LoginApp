//
//  ContactsViewController.swift
//  LoginApp
//
//  Created by Anton Kuzmin on 19.02.2023.
//

import UIKit

final class ContactsViewController: UIViewController {
    
    var user: User!
    
    @IBAction func openLinkButton(_ sender: UIButton) {
         
        guard let url = URL(
            string: sender.tag == 0
            ? user.person.socials.first?.rawValue ?? ""
            : user.person.socials.last?.rawValue ?? ""
        ) else { return }
        
        UIApplication.shared.open(url)
    }
    
}
