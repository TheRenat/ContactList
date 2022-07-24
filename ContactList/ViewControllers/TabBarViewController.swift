//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Renat Ibragimov on 19.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let contactTableVC = viewControllers?.last as? ContactTableViewController else { return }
        
        let persons = Person.getContactPerson()
        contactListVC.persons = persons
        contactTableVC.persons = persons
    }

}
