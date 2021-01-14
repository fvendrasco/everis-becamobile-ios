//
//  MainViewController.swift
//  VendrascoMovie
//
//  Created by Felipe Augusto Vendrasco on 12/01/21.
//  Copyright © 2021 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit
import Foundation
import Alamofire
import CoreData

class MainViewController: UIViewController {
    
    @IBOutlet weak var tabelaFilmes: UITableView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaFilmes.dataSource = self
        self.tabelaFilmes.delegate = self
        //importaListaDeFilmes()
        tabelaFilmes.reloadData()
    }
    
    // MARK: - Visual Elements

    
    // MARK: - Properts

    
    // MARK: - Constructors

    
    // MARK: - Life Cycle

    
    // MARK: - ViewConfiguration

}
extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaFilmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        let movie = listaFilmes[indexPath.row]
        
        celula.textLabel?.text = movie.originalTitle ?? movie.originalName
                
        return celula
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie = listaFilmes[indexPath.row]
        
        callDescriptionView(filme: movie)
    }
    
    func callDescriptionView(filme:Movie) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "descricaoFilmes") as? DescricaoViewController {
            vc.filmeRecebido = filme
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
