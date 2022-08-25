//
//  Registro.swift
//  PracticaSalinas
//
//  Created by apple on 24/08/22.
//

import Foundation
import UIKit

class Registro: UIViewController {

    @IBOutlet weak var PasswordText: UITextField!
    @IBOutlet weak var CPasswprdText: UITextField!
    @IBOutlet weak var EtiquetaConfirmacion: UILabel!
    
    @IBAction func BotonConfirmacion(_ sender: Any) {
        let Pass = PasswordText.text ?? ""
        let CPass = CPasswprdText.text ?? ""
        
        if(Pass != "" && CPass != ""){
            if CPass == Pass {
                EtiquetaConfirmacion.text = "Son iguales"
                EtiquetaConfirmacion.textColor = UIColor.green
            }else{
                EtiquetaConfirmacion.text = "Son diferentes"
                EtiquetaConfirmacion.textColor = UIColor.red
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}
