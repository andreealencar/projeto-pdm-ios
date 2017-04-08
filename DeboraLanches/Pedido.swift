//
//  Pedido.swift
//  DeboraLanches
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class Pedido: NSObject,NSCoding {
    
    var nomeCli: String!
    var pedidos: Array<Produto>!
    
    override init() {
        self.pedidos = Array<Produto>()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.pedidos = aDecoder.decodeObject(forKey: "pedidos") as! Array<Produto>
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.pedidos, forKey: "pedidos")
    }
    
    func add(produto: Produto) {
        self.pedidos.append(produto)
    }
    
    func quantidade() -> Int {
        return self.pedidos.count
    }
    
    func del(pos: Int) {
        self.pedidos.remove(at: pos)
    }
    
    func troca(origem: Int, destino: Int) {
        let aux = self.pedidos[origem]
        self.pedidos[origem] = self.pedidos[destino]
        self.pedidos[destino] = aux;
    }
    
}
