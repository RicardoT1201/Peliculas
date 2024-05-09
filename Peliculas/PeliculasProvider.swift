//
//  PeliculasProvider.swift
//  Peliculas
//
//  Created by Mañanas on 9/5/24.
//

import Foundation


class MovieProvider{
    
    static func searchByName(query:String, completionHandler: @escaping ([Movie]) -> Void){
        
        let url = URL(string: "http://www.omdbapi.com/?apikey=4df9a0d9&s=\(query)")!
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("Error fetching movies: \(error)")
                return
            }
            guard let data = data else {
                print("Error with the data")
                return
            }
            
            print("Data: \(data)")
            
            do {
                let json = try JSONDecoder().decode(MovieResponse.self, from: data)
                
                completionHandler(json.Search)
            } catch {
                print(error)
            }
        })
        
        task.resume()
        
    }
    static func searchById(query:String, completionHandler: @escaping (Movie) -> Void){
        
        let url = URL(string: "http://www.omdbapi.com/?apikey=4df9a0d9&s=\(query)")!
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("Error fetching movies: \(error)")
                return
            }
            guard let data = data else {
                print("Error with the data")
                return
            }
            
            print("Data: \(data)")
            
            guard let json = try? JSONDecoder().decode(Movie.self, from: data) else{
                print("Json parse exception")
                return
                }
            
            completionHandler(json)
        })
        
        task.resume()
        
    }
   
}
