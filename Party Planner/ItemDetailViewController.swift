//
//  ItemDetailViewController.swift
//  Party Planner
//
//  Created by John Gallaugher on 3/19/18.
//  Copyright © 2018 John Gallaugher. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {

    @IBOutlet weak var personResponsibleField: UITextField!
    @IBOutlet weak var partyItemField: UITextField!
    
    var partyItem: String!
    var personResponsible: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if partyItem == nil{
            partyItem = ""
        }
        if personResponsible == nil {
            personResponsible = ""
        }
        personResponsibleField.text = personResponsible
        partyItemField.text = partyItem
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        personResponsible = personResponsibleField.text
        partyItem = partyItemField.text
    }

    @IBAction func cancelBarButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}
