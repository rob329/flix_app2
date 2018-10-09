//
//  PopularMovieCell.swift
//  flix_app2
//
//  Created by Robert Bolt on 10/8/18.
//  Copyright © 2018 Robert Bolt. All rights reserved.
//

import UIKit

class PopularMovieCell: UITableViewCell {

    @IBOutlet weak var popularTitle: UILabel!
   
    @IBOutlet weak var popularOverview: UILabel!
    
    @IBOutlet weak var popularImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var movie: Movie!{
        didSet{
            popularTitle.text = movie.title
            popularOverview.text = movie.overview
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            let posterURL = URL(string: baseURLString + movie.posterpathString)!
            popularImage.af_setImage(withURL: posterURL)
        }
    }


}
