//
//  ViewController.swift
//  Homework 9
//
//  Created by Artem Tkachenko on 14.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var shoppingListArray = UserDefaults.standard.stringArray(forKey: "items") ?? [] {
        didSet {
            UserDefaults.standard.set(shoppingListArray, forKey: "items")
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Shopping list"
        
        tableView.dataSource = self
        
        configureItems()

    }
    
    private func configureItems() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addAllert))
    }
    
    @objc func addAllert() {
        
        let dialogMessage = UIAlertController(title: "Do you wanna add new position?", message: nil, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            print("Pushed OK")
            
            let message = dialogMessage.textFields?.first?.text ?? ""
            self.shoppingListArray.append(message)
        })
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
            print("Pushed Cancel")
        }
        
        dialogMessage.addAction(ok)
        dialogMessage.addAction(cancel)
        
        self.present(dialogMessage, animated: true, completion: nil)
        
        dialogMessage.addTextField(configurationHandler: { textField in
            textField.placeholder = "Add new position for adding"
        })
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shoppingListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = shoppingListArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            shoppingListArray.remove(at: indexPath.row)
        }
    }
}

