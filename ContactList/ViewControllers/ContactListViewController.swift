//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Renat Ibragimov on 19.07.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var persons: [Person] = []

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let fullInfoVC = segue.destination as? FullInfoViewController else { return }
            fullInfoVC.person = persons[indexPath.row]
        }
    }
}
