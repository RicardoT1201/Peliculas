//
//  PeliculasTableViewCell.swift
//  Peliculas
//
//  Created by Mañanas on 9/5/24.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    
    @IBOutlet var imageIV: UIImageView!
    @IBOutlet var yearTV: UILabel!
    @IBOutlet var titleTV: UILabel!
    
    func render (movie: Movie){
        titleTV.text = movie.Title
        yearTV.text = movie.Year
        imageIV.image = UIImage(named: "imagen-placeholder")
        imageIV.loadFrom(url: movie.Poster)
        
    }


}
