//
//  FormularioViewController.swift
//  DeboraLanches
//
//  Created by admin on 08/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class FormularioViewController: UIViewController {

    var produto: Produto!
    var pedido: Pedido!
   
    @IBOutlet weak var lbNomeProduto: UILabel!
    
    @IBOutlet weak var stQuantidade: UIStepper!
    
    @IBOutlet weak var lbQuantidade: UILabel!
    
    @IBAction func addCarrinho(_ sender: Any) {
        
        
        
        if (self.pedido != nil){
            for p in 1...Int(self.stQuantidade.value) {
                self.pedido.add(produto: produto)
               
            }
        }else{
            self.pedido = Pedido()
            for p in 1...Int(self.stQuantidade.value) {
                self.pedido.add(produto: produto)
               
            }
        }
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let cvc = sb.instantiateViewController(withIdentifier: "cardapio") as! CardapioTableViewController
        
        print(self.pedido.pedidos.count)
        
    }
    @IBAction func definirQuantidade(_ sender: Any) {
        
        self.lbQuantidade.text = String(Int(self.stQuantidade.value))
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.lbNomeProduto.text = produto.nome
    }
    

   

}
