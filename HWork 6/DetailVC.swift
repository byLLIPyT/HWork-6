//
//  DetailVC.swift
//  HWork 6
//
//  Created by Александр Уткин on 11/08/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var telephonLabel: UILabel!
    
    var fullName: String  = ""
    var email: String     = ""
    var telephone: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = fullName
        emailLabel.text    = "e-mail: " + email
        telephonLabel.text = "tel: " + telephone
        
    }

}
