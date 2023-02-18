//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Anton Kuzmin on 18.02.2023.
//

import UIKit

final class AboutMeViewController: UIViewController {


    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var jobPositionLabel: UILabel!
    
    @IBOutlet var avatarImageView: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let user = user {
            self.navigationItem.title = "\(user.person.name) \(user.person.surname)"
            
            nameLabel.text = (nameLabel.text ?? "Name: ") + user.person.name
            surnameLabel.text = (surnameLabel.text ?? "Surname: ") + user.person.surname
            companyLabel.text = (companyLabel.text ?? "Company: ") + user.person.company
            jobPositionLabel.text = (jobPositionLabel.text ?? "Position: ") + user.person.job
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        
        moreInfoVC.user = user
    }
}
