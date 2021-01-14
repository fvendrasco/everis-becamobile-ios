//
//  MainViewData.swift
//  VendrascoMovie
//
//  Created by Felipe Augusto Vendrasco on 12/01/21.
//  Copyright © 2021 Felipe Augusto Vendrasco. All rights reserved.
//
import Alamofire

var listaFilmes:[Movie] =  []

func importaListaDeFilmes() {
    Alamofire.request("https://api.themoviedb.org/3/trending/all/week?api_key=d30569abd40d52ac10aae81269a39d4d&language=pt-BR", method: .get).responseJSON { (response) in
        
        switch response.result{
        
        case .success:
            if let data = response.data {
                do {
                    let decoder = JSONDecoder()
                    let filmesOBJ = try decoder.decode(MoviesResponse.self, from: data )
                        listaFilmes = filmesOBJ.results
//                        tabelaFilmes.reloadData()MoviesResponse.self, from: data
                    
                } catch let erro {
                    print(erro.localizedDescription)
                }
                
            } else {
                print("Data Nil")
            }
           
            break
        case .failure:
            print(response.error ?? "Erro API")
            
            break
        }
    }
}

