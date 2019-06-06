//
//  Pokemon.swift
//  PokemonApp
//
//  Created by lg on 06.06.19.
//  Copyright © 2019 hdm. All rights reserved.
//

import Foundation
import UIKit

class Pokemon {
    var image: UIImage
    var title: String
    
    init(image: UIImage, title:String) {
        self.image = image
        self.title = title 
    }
}
