//
//  Pelicula.swift
//  Peliculas
//
//  Created by Mañanas on 9/5/24.
//

import Foundation

struct MovieResponse: Codable {
    
    let Response : String
    let Search : [Movie]
}

struct Movie: Codable{
    
    let Title: String
    let Year : String
    let Poster : String
    let imdbID : String
    let Plot : String?
    let Runtime : String?
    let Director: String?
    let Genre: String?
    let Country: String?
}
