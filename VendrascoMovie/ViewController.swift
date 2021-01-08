//
//  ViewController.swift
//  VendrascoMovie
//
//  Created by Felipe Augusto Vendrasco on 07/01/21.
//  Copyright © 2021 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit
import Foundation
import Alamofire


class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tabelaFilmes: UITableView!
    
    let listaFilmes:Array<String> = ["The Mandalorian", "Mulher Maravilha", "Soul"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaFilmes.dataSource = self
        importaListaDeFilmes()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: - GET API
    
    func importaListaDeFilmes() {
        Alamofire.request("https://api.themoviedb.org/3/trending/all/week?api_key=d30569abd40d52ac10aae81269a39d4d&language=pt-BR", method: .get).responseJSON { (response) in
            
            switch response.result{
            
            case .success:
                
                if let resposta = response.result.value as? Dictionary<String, Any> {
                    guard let filmesLista = resposta["results"] as? Array<Dictionary<String, Any>> else {return}
                    
                }
                
                break
            case .failure:
                print(response.error!)
                
                break
                
           
            }            
        }
    }
    
    
    // MARK: Tela Home
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaFilmes.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        celula.textLabel?.text = listaFilmes[indexPath.row]
        
        return celula
    }


    // MARK: Tela Descricao
    
    
}

