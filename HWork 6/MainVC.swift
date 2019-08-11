//
//  MainVC.swift
//  HWork 6
//
//  Created by Александр Уткин on 11/08/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import UIKit

class MainVC: UITableViewController {

    var names: [String] = ["Alex"
        ,"Igor"
        ,"Denis"
        ,"Mike"
        ,"Anna"
        ,"Bob"
        ,"Jane"
        ,"Rey"
        ,"Elena"
        ,"Inga"]
    
    var surnames: [String] = ["Daniels"
        ,"Ford"
        ,"Harris"
        ,"Labert"
        ,"Wallace"
        ,"Beverly"
        ,"Collins"
        ,"Moore"
        ,"Stephenson"
        ,"Washington"]
    
    var telephones: [String] = ["+1 234 567-89-00"
        ,"+1 234 457-48-88"
        ,"+1 144 587-00-15"
        ,"+1 333 917-60-65"
        ,"+1 354 887-70-55"
        ,"+1 934 325-33-12"
        ,"+1 734 797-19-98"
        ,"+1 534 196-99-36"
        ,"+1 334 911-79-74"
        ,"+1 134 300-59-33"]
    
    var emails: [String] = ["nerrusumi@gmail.com"
        ,"aneqennirr@gmail.com"
        ,"dezatydyre@gmail.com"
        ,"polessutta@gmail.com"
        ,"ossaturew@gmail.com"
        ,"peballuffeppo@gmail.com"
        ,"issafarrytt@gmail.com"
        ,"afuwoqassy@gmail.com"
        ,"enissodda@gmail.com"
        ,"ecattopeddi@gmail.com"]
    
    var personTable: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shuffledAndInit()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Person", for: indexPath)
        cell.textLabel?.text = names[indexPath.row] + " " + surnames[indexPath.row]
        return cell
    }
    
    private func shuffledAndInit() {
        
        names      = names.shuffled()
        surnames   = surnames.shuffled()
        emails     = emails.shuffled()
        telephones = telephones.shuffled()
        
        for index in 0...names.count - 1 {
            let newPerson: Person = Person(name: names[index]
                , surname: surnames[index]
                , email: emails[index]
                , telephone: telephones[index])
            personTable.append(newPerson)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailVC
            detailVC.fullName = names[indexPath.row] + " " + surnames[indexPath.row]
            detailVC.email = emails[indexPath.row]
            detailVC.telephone = telephones[indexPath.row]
        }
    }    
}
