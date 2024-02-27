//
//  ViewController.swift
//  Project2
//
//  Created by Jonathan Baires on 2/25/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var movies: [Movie] = []
    
    @IBOutlet weak var movieView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.]
        
        movies = Movie.mockMovies
        print(movies)
        
        movieView.dataSource = self
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // TODO: Pt 1 - Pass the selected track to the detail view controller
            // Get the cell that triggered the segue
            if let cell = sender as? UITableViewCell,
               // Get the index path of the cell from the table view
               let indexPath = movieView.indexPath(for: cell),
               // Get the detail view controller
               let detailViewController = segue.destination as? DetailViewController {

                // Use the index path to get the associated track
                let movie = movies[indexPath.row]

                // Set the track on the detail view controller
                detailViewController.movie = movie
            }

        }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
                
        let movie = movies[indexPath.row]
                
        cell.configure(with: movie)
                
        return cell
    }
}

