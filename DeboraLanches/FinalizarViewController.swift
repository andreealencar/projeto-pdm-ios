//
//  FinalizarViewController.swift
//  DeboraLanches
//
//  Created by admin on 08/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class FinalizarViewController: UIViewController {

    @IBOutlet weak var tfNomeCli: UITextField!
    
    let appDel = UIApplication.shared.delegate as! AppDelegate
    
    var pedido: Pedido!
    
  
    @IBAction func finalizaPedido(_ sender: Any) {
        
        let nomeCli = self.tfNomeCli.text
        let data = Date()
        let produtos = self.appDel.pedido.produtos
        
        if(self.pedido != nil){
            
            self.pedido.nomeCli = nomeCli
            self.pedido.dataPedido = data
            self.pedido.produtos  = produtos
            
            
        }else {
            
            let pedido  = Pedido(nomeCli: nomeCli!, dataPedido: data, produtos: Array<Produto>!)
            
            self.appDel.pedido.produtos.append(pedido)
            
        
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
