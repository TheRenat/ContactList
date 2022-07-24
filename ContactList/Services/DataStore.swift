//
//  PersonData .swift
//  ContactList
//
//  Created by Renat Ibragimov on 19.07.2022.
//

class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "John", "Tim", "Eric", "Alex",
        "Carl", "Michael", "Renat",
        "Dmitry", "Steve", "Calvin"
    ]
    
    let surnames = [
        "Snow", "Cook", "Clapton", "Turner",
        "Brulov", "Jordan", "Ibragimov",
        "Romanov", "Jobs", "Klien"
    ]
    
    let emails = [
        "office@mai.ru", "info@gmail.com", "reception@bk.ru", "home@yahoo.com",
        "apple@apple.com", "nba@mail.com", "therenat@mail.ru",
        "ttk@yandex.ru", "google@google.com", "fashion@ru.ru"
    ]
    
    let phones = [
        "123123", "123456", "098098", "098765",
        "456789", "460460", "445555", "666666",
        "777777", "123444", "666666"
    ]
    
    private init() {}
    
}
