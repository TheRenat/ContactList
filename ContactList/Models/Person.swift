//
//  Person.swift
//  ContactList
//
//  Created by Renat Ibragimov on 19.07.2022.
//

struct Person {
    var name: [String]
    var surname: [String]
    var email: [String]
    var phoneNumber: [String]
    
    static func getPerson() -> Person {
        let randomPerson = DataStore()
        
        return Person(
            name: randomPerson.names.shuffled(),
            surname: randomPerson.surnames.shuffled(),
            email: randomPerson.emails.shuffled(),
            phoneNumber: randomPerson.phoneNumbers.shuffled()
        )
    }
}


