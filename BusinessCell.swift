//
//  BusinessCell.swift
//  Yelp
//
//  Created by kevaughn charles on 2/13/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var thumbImageView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var ratingImageView: UIImageView!
    
    @IBOutlet weak var reviewsCountLabel: UILabel!
    
    
    @IBOutlet weak var addressLabel: UILabel!
    
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business: Business!{
        didSet{
            nameLabel.text = business.name
            
            categoriesLabel.text = business.categories
            distanceLabel.text = business.distance
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            addressLabel.text = business.address
            thumbImageView.setImageWithURL(business.imageURL!)
            ratingImageView.setImageWithURL(business.ratingImageURL!)
            
           
            
            
            
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
