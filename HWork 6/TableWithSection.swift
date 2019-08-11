//
//  TableWithSection.swift
//  HWork 6
//
//  Created by Александр Уткин on 11/08/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import UIKit

class TableWithSection: UITableViewController {

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
    
    var sections: [String] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        createSection()
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
         return sections[section]
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        view.tintColor = UIColor.gray
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .white
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        // #warning Incomplete implementation, return the number of sections
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = emails[indexPath.section]
        } else {
            cell.textLabel?.text = telephones[indexPath.section]
        }
        
        return cell
    }
    
    private func createSection() {
        
        for index in 0...names.count - 1 {
        let newFullName = names[index] + " " + surnames[index]
            sections.append(newFullName)
        }
    }
}
