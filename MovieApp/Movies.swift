//
//  Movies.swift
//  Goswami_MovieApp
//
//  Created by Bhavesh on 11/5/25.
//

import Foundation

struct MovieList {
    var movieName: String
    var movieImage: String    // use local asset name
    var movieInfo: String
}

struct Movies {
    var genre: String
    var list_Array: [MovieList]
}

struct MovieDataProvider {
    static func allGenres() -> [Movies] {
        return [
            // ACTION GENRE
            Movies(
                genre: "Action",
                list_Array: [
                    MovieList(
                        movieName: "Inception",
                        movieImage: "inception",
                        movieInfo: "A thief who steals corporate secrets through dream-sharing technology is given a chance at redemption."
                    ),
                    MovieList(
                        movieName: "The Dark Knight",
                        movieImage: "darkknight",
                        movieInfo: "Batman faces the Joker, a criminal mastermind who wants to push Gotham into chaos."
                    ),
                    MovieList(
                        movieName: "Gladiator",
                        movieImage: "gladiator",
                        movieInfo: "A betrayed Roman general seeks revenge against the corrupt emperor."
                    ),
                    MovieList(
                        movieName: "John Wick",
                        movieImage: "johnwick",
                        movieInfo: "A retired hitman seeks vengeance for the killing of his dog and theft of his car."
                    ),
                    MovieList(
                        movieName: "Mad Max: Fury Road",
                        movieImage: "madmax",
                        movieInfo: "In a post-apocalyptic wasteland, Max helps a rebellious woman escape from a tyrant."
                    )
                ]
            ),
            
            // HORROR GENRE
            Movies(
                genre: "Horror",
                list_Array: [
                    MovieList(
                        movieName: "The Conjuring",
                        movieImage: "conjuring",
                        movieInfo: "Paranormal investigators help a family terrorized by a dark presence in their farmhouse."
                    ),
                    MovieList(
                        movieName: "It",
                        movieImage: "it",
                        movieInfo: "A group of kids confronts a shape-shifting evil entity in their town."
                    ),
                    MovieList(
                        movieName: "Hereditary",
                        movieImage: "hereditary",
                        movieInfo: "After the family matriarch dies, a grieving family experiences dark secrets and tragedies."
                    ),
                    MovieList(
                        movieName: "A Quiet Place",
                        movieImage: "quietplace",
                        movieInfo: "A family must live in silence while hiding from monsters with ultra-sensitive hearing."
                    )
                ]
            ),
            
            // DRAMA GENRE
            Movies(
                genre: "Drama",
                list_Array: [
                    MovieList(
                        movieName: "Forrest Gump",
                        movieImage: "forrestgump",
                        movieInfo: "The life journey of a man with a kind heart who experiences key historical events."
                    ),
                    MovieList(
                        movieName: "The Godfather",
                        movieImage: "godfather",
                        movieInfo: "The aging patriarch of an organized crime dynasty transfers control to his reluctant son."
                    ),
                    MovieList(
                        movieName: "12 Years a Slave",
                        movieImage: "12years",
                        movieInfo: "The story of Solomon Northup, a free black man kidnapped and sold into slavery."
                    ),
                    MovieList(
                        movieName: "Fight Club",
                        movieImage: "fightclub",
                        movieInfo: "An insomniac and a soap salesman form an underground fight club that evolves into something sinister."
                    ),
                    MovieList(
                        movieName: "The Shawshank Redemption",
                        movieImage: "shawshank",
                        movieInfo: "Two imprisoned men form a deep friendship and find hope in a bleak prison life."
                    )
                ]
            )
        ]
    }
}
