//
//  ViewController.swift
//  Key_Path_Expressions
//
//  Created by rajasekhar pidikiti on 01/06/24.
//

import UIKit

class ViewController: UIViewController {

    fileprivate func emailsOnlyWithKeyPathExpressions(_ person: [Person]) -> [String] {
        // Extracting an array of emails using key path expressions
        let emailsKeyPathExpressions = person.map(\.email)
       
        return emailsKeyPathExpressions
    }
    
    fileprivate func emailsOnlyWithClosers(_ person: [Person]) -> [String] {
        // Extracting an array of emails using closures
        let emails = person.map { person in
            return person.email
        }
      
        return emails
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Sample array of User objects
        let person = [
            Person(name: "Alice", email: "alice@example.com", isAdmin: true),
            Person(name: "Bob", email: "bob@example.com", isAdmin: false),
            Person(name: "Charlie", email: "charlie@example.com", isAdmin: true)
        ]

        let emailsKeyPathExpressions =  emailsOnlyWithClosers(person)
        let emails = emailsOnlyWithKeyPathExpressions(person)
        print(emailsKeyPathExpressions)
        print(emails)
    }

}

