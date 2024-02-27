//
//  DetailViewController.swift
//  Project2
//
//  Created by Jonathan Baires on 2/26/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var popularity: UILabel!
    @IBOutlet weak var backdropImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var voteAvgLabel: UILabel!
    @IBOutlet weak var voteCntLabel: UILabel!
    
    
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Nuke.loadImage(with: movie.backdrop, into: backdropImage)
        
        movieTitle.text = movie.movieName
        voteAvgLabel.text = movie.voteAverage + " Vote Average"
        voteCntLabel.text = movie.voteCount + " Votes"
        popularity.text = movie.popularity + " Popularity"
        movieDescription.text = movie.movieDescription
        
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
