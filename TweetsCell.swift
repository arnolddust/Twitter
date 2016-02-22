//
//  TweetsCell.swift
//  Twitter
//
//  Created by Arnold Ballesteros on 2/21/16.
//  Copyright © 2016 Arnold Ballesteros. All rights reserved.
//

import UIKit

class TweetsCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var tweetsLabel: UILabel!
    @IBOutlet weak var handleLabel: UILabel!
    @IBOutlet weak var timeStampLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
   
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
  //  var tweetID: NSNumber?
    

   
    var tweet: Tweet! {
        didSet {
            print("Labels Printing")
            tweetsLabel.text = tweet.text as? String
            timeStampLabel.text = tweet.createdAtString as? String
            nameLabel.text = tweet.user!.name as? String
            profileImageView.setImageWithURL(tweet.user!.profileImageUrl!)
            handleLabel.text = "@\(tweet.user!.screenname!)" as? String
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //Rounded Corners Profile
        profileImageView.layer.cornerRadius = 5
        profileImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width

    }
  
    @IBAction func retweetButtonActivated(sender: AnyObject) {
        print("Retweet activated")
        retweetButton.setImage(UIImage(named: "retweet-action-on.png"), forState: UIControlState.Normal)
        }

    @IBAction func likeButtonActivated(sender: AnyObject) {
        print("Like Activated")
        likeButton.setImage(UIImage(named: "like-action-on.png"), forState: UIControlState.Normal)
    }

        
    
    


    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
