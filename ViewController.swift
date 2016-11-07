//
//  ViewController.swift
//  My Pokemons
//
//  Created by TN NCUBE on 2016-11-07.
//  Copyright © 2016 TN NCUBE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var lbPokemonName: UILabel!
    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var tbPokemonNames: UITextField!
    
    var pokemonList: [String] = ["caterpie", "ekans", "pikachu", "clefairy"]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func bSearch(_ sender: Any) {
        lbPokemonName.text = ""
        
        let pokemonName = tbPokemonNames.text
        
        var isFound = false
        
        if pokemonName != "" {
            // label will show text
            lbPokemonName.text = pokemonName
            
            for name in pokemonList {
                if pokemonName == name {
                    lbPokemonName.text = pokemonName
                    isFound = true
                    break
                }
            }
            
            if isFound {
                lbPokemonName.text = "\(pokemonName!) can't be found"
            }
        }
        else {
            // Show Alerts here
            let alert = UIAlertController(title: "Alert", message: "Pokemon's name cannot be empty", preferredStyle: UIAlertControllerStyle.alert)
            let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            
        }
    }


}

