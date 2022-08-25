//
//  FrasePalindromo.swift
//  PracticaSalinas
//
//  Created by apple on 25/08/22.
//

import Foundation
import UIKit

class FrasePalindromo: UIViewController {

    @IBOutlet weak var FraseText: UITextField!
    
    @IBOutlet weak var EtiquetaConfirmación: UILabel!
    
    @IBAction func BotonAnalisar(_ sender: Any) {
        var Frase = FraseText.text?.lowercased() ?? ""
        Frase = Frase.replacingOccurrences(of: " ", with: "")
        
        let FraseInversa = String(Frase.reversed())
        
        if (Frase == FraseInversa){
            EtiquetaConfirmación.text = "La frase que ingreso si es un palindromo"
            EtiquetaConfirmación.textColor = UIColor.green
        }else{
            EtiquetaConfirmación.text = "La frase que ingreso no es un palindromo"
            EtiquetaConfirmación.textColor = UIColor.red
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    

}
