//
//  ViewController.swift
//  PokemonApp
//
//  Created by lg on 06.06.19.
//  Copyright © 2019 hdm. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    

   
    @IBOutlet weak var tableView: UITableView!
    
     var pokemons: [Pokemon] = []
    //var myIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemons = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
        //self.tableView.register(TPokemonCell.self, forCellReuseIdentifier: "Pokemoncell")

    }
    func createArray() -> [Pokemon] {
        var tempPokemon: [Pokemon] = []
        
        let pokemon1 = Pokemon(image: UIImage(imageLiteralResourceName: "006.png"), title: "Glurak")
        let pokemon2 = Pokemon(image: UIImage(imageLiteralResourceName: "025.png"), title: "Pikachu")
        let pokemon3 = Pokemon(image: UIImage(imageLiteralResourceName: "065.png"), title: "Simsala")
         let pokemon4 = Pokemon(image: UIImage(imageLiteralResourceName: "149.png"), title: "Dragoran")
       
        tempPokemon.append(pokemon1)
        tempPokemon.append(pokemon2)
        tempPokemon.append(pokemon3)
        tempPokemon.append(pokemon4)
        
        return tempPokemon
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let destVC = segue.destination as! DetailViewControllerTableViewController
            destVC.pokemon = sender as? Pokemon
            
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pokemon = pokemons[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Pokemoncell") as! TPokemonCell
        cell.setPokemon(pokemon: pokemon)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pokemon = pokemons[indexPath.row]
        performSegue(withIdentifier: "segue", sender: pokemon)

    }

}

