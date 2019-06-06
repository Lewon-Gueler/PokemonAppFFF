//
//  TPokemonCell.swift
//  PokemonApp
//
//  Created by lg on 06.06.19.
//  Copyright © 2019 hdm. All rights reserved.
//

import UIKit

class TPokemonCell: UITableViewCell {

    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    
    
    
    func setPokemon(pokemon: Pokemon) {
        
        pokemonImage.image = pokemon.image
        pokemonName.text = pokemon.title
    }
    
}
