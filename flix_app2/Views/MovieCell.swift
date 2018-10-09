//
//  MovieCell.swift
//  flix_app2
//
//  Created by Robert Bolt on 9/8/18.
//  Copyright © 2018 Robert Bolt. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: Movie! {
        didSet {
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            let posterUrl = URL(string: baseURLString + movie.posterpathString)!
            posterImageView.af_setImage(withURL: posterUrl)
            titleLabel.text = movie.title
            overviewLabel.text = movie.overview
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
