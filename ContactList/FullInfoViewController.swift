//
//  ViewController.swift
//  ContactList
//
//  Created by Renat Ibragimov on 18.07.2022.
//

import UIKit

class FullInfoViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationItem.title = person
        phoneNumberLabel.text = ""
        

    }
}

