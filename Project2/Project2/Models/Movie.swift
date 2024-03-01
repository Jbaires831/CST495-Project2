//
//  Movie.swift
//  Project2
//
//  Created by Jonathan Baires on 2/25/24.
//

import Foundation

struct Movie: Decodable{
    let movieName: String
    let movieDescription: String
    
    let backdrop: URL
    let moviePoster: URL
    let voteAverage: String
    let voteCount: String
    let popularity: String
}

struct MoviesResponse: Decodable{
    let results: [Movie]
}

extension Movie{
    
    static var mockMovies: [Movie]  = [
            Movie(movieName: "Anyone But You",
                  movieDescription: "After an amazing first date, Bea and Ben’s fiery attraction turns ice cold — until they find themselves unexpectedly reunited at a destination wedding in Australia. So they do what any two mature adults would do: pretend to be a couple.",
                  backdrop: URL(string:"https://image.tmdb.org/t/p/original//nTPFkLUARmo1bYHfkfdNpRKgEOs.jpg")!,
                  moviePoster: URL(string:"https://image.tmdb.org/t/p/original//61WFGwk5CShlKVroQQOo4hvNEoo.jpg")!,
                  voteAverage: "6.888",
                  voteCount: "602",
                  popularity: "2089.297"),
            
            Movie(movieName: "Land of Bad",
                  movieDescription: "When a Delta Force special ops mission goes terribly wrong, Air Force drone pilot Reaper has 48 hours to remedy what has devolved into a wild rescue operation. With no weapons and no communication other than the drone above, the ground mission suddenly becomes a full-scale battle when the team is discovered by the enemy.",
                  backdrop: URL(string:"https://image.tmdb.org/t/p/original//oBIQDKcqNxKckjugtmzpIIOgoc4.jpg")!,
                  moviePoster: URL(string:"https://image.tmdb.org/t/p/original//bIeEMMvfzgbMBtYaEWtxrFnt6Vo.jpg")!,
                  voteAverage: "7.303",
                  voteCount: "137",
                  popularity: "1815.442"),
            
            Movie(movieName: "Migration",
                  movieDescription: "After a migrating duck family alights on their pond with thrilling tales of far-flung places, the Mallard family embarks on a family road trip, from New England, to New York City, to tropical Jamaica.",
                  backdrop: URL(string:"https://image.tmdb.org/t/p/original//meyhnvssZOPPjud4F1CjOb4snET.jpg")!,
                  moviePoster: URL(string:"https://image.tmdb.org/t/p/original//ldfCF9RhR40mppkzmftxapaHeTo.jpg")!,
                  voteAverage: "7.634",
                  voteCount: "736",
                  popularity: "1258.92"),
            
            Movie(movieName: "No Way Up",
                  movieDescription: "Characters from different backgrounds are thrown together when the plane they're travelling on crashes into the Pacific Ocean. A nightmare fight for survival ensues with the air supply running out and dangers creeping in from all sides.",
                  backdrop: URL(string:"https://image.tmdb.org/t/p/original//4woSOUD0equAYzvwhWBHIJDCM88.jpg")!,
                  moviePoster: URL(string:"https://image.tmdb.org/t/p/original//rieMzC6JJoMVbsaUv6Rzj0fR7Px.jpg")!,
                  voteAverage: "5.692",
                  voteCount: "52",
                  popularity: "1039.872"),
            
            Movie(movieName: "황야",
                  movieDescription: "After a deadly earthquake turns Seoul into a lawless badland, a fearless huntsman springs into action to rescue a teenager abducted by a mad doctor.",
                  backdrop: URL(string:"https://image.tmdb.org/t/p/original//pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg")!,
                  moviePoster: URL(string:"https://image.tmdb.org/t/p/original//24CL0ySodCF8bcm38xtBeHzHp7W.jpg")!,
                  voteAverage: "6.774",
                  voteCount: "477",
                  popularity: "1003.96"),
            
            Movie(movieName: "Dune",
                  movieDescription: "Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet's exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity's greatest potential-only those who can conquer their fear will survive.",
                  backdrop: URL(string:"https://image.tmdb.org/t/p/original//lzWHmYdfeFiMIY4JaMmtR7GEli3.jpg")!,
                  moviePoster: URL(string:"https://image.tmdb.org/t/p/original//d5NXSklXo0qyIYkgV94XAgMIckC.jpg")!,
                  voteAverage: "7.788",
                  voteCount: "10167",
                  popularity: "559.185"),
            ]
}
