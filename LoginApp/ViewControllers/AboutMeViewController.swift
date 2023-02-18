//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Anton Kuzmin on 18.02.2023.
//

import UIKit

final class AboutMeViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var jobPositionLabel: UILabel!
    
    @IBOutlet var avatarImageView: UIImageView!
    
    var name: String!
    var surname: String!
    var company: String!
    var job: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name, let surname = surname, let company = company, let job = job {
            fullNameLabel.text = "\(name) \(surname)"
            nameLabel.text = (nameLabel.text ?? "Name: ") + name
            surnameLabel.text = (surnameLabel.text ?? "Surname: ") + surname
            companyLabel.text = (companyLabel.text ?? "Company: ") + company
            jobPositionLabel.text = (jobPositionLabel.text ?? "Position: ") + job
        }
    }
    
    override func viewWillLayoutSubviews() {
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
    }
}
