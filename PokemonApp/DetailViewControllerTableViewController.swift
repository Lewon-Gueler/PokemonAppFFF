//
//  DetailViewControllerTableViewController.swift
//  PokemonApp
//
//  Created by lg on 06.06.19.
//  Copyright © 2019 hdm. All rights reserved.
//

import UIKit

class DetailViewControllerTableViewController: UIViewController {
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelNameData: UILabel!
    @IBOutlet weak var labelExp: UILabel!
    @IBOutlet weak var labelExpData: UILabel!
    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelHeightData: UILabel!
    
    var pokemon: Pokemon?
    
    /*init(name: String, image: UIImage) {
        self.labelName.text = name
        self.imageView2.image = image
          }
     */

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = pokemon?.title
        imageView2.image = pokemon?.image
        
    }

    //
}
