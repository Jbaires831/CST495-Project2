//
//  MovieCell.swift
//  Project2
//
//  Created by Jonathan Baires on 2/25/24.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.movieName
        movieDescriptionLabel.text = movie.movieDescription
        
        Nuke.loadImage(with: movie.moviePoster, into: movieImageLabel)
        
    }
    
    @IBOutlet weak var movieImageLabel: UIImageView!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    @IBOutlet weak var movieNameLabel: UILabel!
}
