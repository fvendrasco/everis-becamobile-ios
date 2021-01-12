//
//  DescricaoViewController.swift
//  VendrascoMovie
//
//  Created by Felipe Augusto Vendrasco on 08/01/21.
//  Copyright © 2021 Felipe Augusto Vendrasco. All rights reserved.
//

import UIKit

class DescricaoViewController: UIViewController {

    @IBOutlet weak var imagemBannerFilmes: UIImageView!
    @IBOutlet weak var tituloFilmesDetalhes: UILabel!
    @IBOutlet weak var notaFilmesDetalhes: UILabel!
    @IBOutlet weak var descricaoFilmesDetalhes: UILabel!
    
    var filmeRecebido:Movie? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
