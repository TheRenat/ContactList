//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Renat Ibragimov on 19.07.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var person = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.name.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullName", for: indexPath)
        cell.textLabel?.text = "\(person.name.removeFirst()) \(person.surname.removeFirst())"
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fullInfoVC = segue.destination as? FullInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        fullInfoVC.person = person[indexPath.row]
        
    }
}
