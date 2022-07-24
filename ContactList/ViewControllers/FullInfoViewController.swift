//
//  ViewController.swift
//  ContactList
//
//  Created by Renat Ibragimov on 18.07.2022.
//

import UIKit

class FullInfoViewController: UIViewController {

    @IBOutlet var contactPhoneLabel: UILabel!
    @IBOutlet var contactEmailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        contactPhoneLabel.text = "Phone:  \(person.phoneNumber)"
        contactEmailLabel.text = "e-mail:  \(person.email)"

    }
}

