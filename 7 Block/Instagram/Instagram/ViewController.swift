//
//  ViewController.swift
//  Instagram
//
//  Created by Artem Tkachenko on 30.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfPosts = [Post]()
    var firstPost = Post(mainImage: "girl", profileImage: "girl", profileName: "girl", caption: "text text text text text text text text", numberOfLikes: 200, numberOfComments: 12, timeOfPublication: "23 minutes")
    var secondPost = Post(mainImage: "guy1", profileImage: "guy1", profileName: "guy1", caption: "text text text text text text text text text text text text text text text text text text text text text text", numberOfLikes: 240, numberOfComments: 15, timeOfPublication: "2 days")
    var thirdPost = Post(mainImage: "guy2", profileImage: "guy2", profileName: "guy2", caption: "text text text text", numberOfLikes: 600, numberOfComments: 32, timeOfPublication: "1 hour")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "PostTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "PostTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        arrayOfPosts = [firstPost, secondPost, thirdPost]
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfPosts.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell") as! PostTableViewCell
        cell.configure(with: arrayOfPosts[indexPath.row])
        return cell
    }
    
}

