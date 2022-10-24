//
//  PostTableViewCell.swift
//  Instagram
//
//  Created by Artem Tkachenko on 30.08.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var timeOfPublicationLabel: UILabel!
    
    func configure(with post: Post) {
        profileImageView.image = UIImage(named: post.profileImage)
        profileNameLabel.text = post.profileName
        mainImageView.image = UIImage(named: post.mainImage)
        likesLabel.text = "\(post.numberOfLikes) likes"
        captionLabel.text = post.caption
        commentsLabel.text = "View all \(post.numberOfComments) comments"
        timeOfPublicationLabel.text = "\(post.timeOfPublication) ago"
        mainImageView.contentMode = .scaleAspectFit
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2
    }
    
}
