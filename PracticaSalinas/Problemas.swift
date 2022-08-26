//
//  Problemas.swift
//  PracticaSalinas
//
//  Created by apple on 25/08/22.
//

import UIKit

class Problemas: UIViewController {
    func make_sum(x: Int, y: Float) -> Float {
            return Float(x) + y
        }

    func Problema2 (x: [Int]) {
        var contador = 0
        for i in x{
            if i == 7 {
                contador += 1
            }
        }
        print(contador)
    }
    
    func Problema3 (x : [Int]) -> Bool{
        var aux : Int
        
        for i in 0..<x.count {
            aux = x[i]
            if (i<x.count-2 && aux == x[i+1] && aux == x[i+2] ) {
                return true
            }
        }
        
        return false
    }
    
    func Problema4 (x: [Int]) -> Int {
        var aux = 0
        switch x.count {
        case 0:
            return aux
            break
        case 1 ... 2 :
            aux = x[0]
            return aux
            break
        default:
            aux = x[1] + x[0]
            return aux
            break
        }
        
    }
    
    func Ordenamiento (x: [Int]) -> Int{
        var aux = x[0]
        for i in x {
            if aux <= i {
                aux = i
            }
        }
        return aux
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //problema 1
        let variable, v2 : Float
        let v1 : Int
        v1 = 5
        v2 = 5.5
        variable = make_sum(x: v1, y: v2)
        print(variable)
        //problema 2
        let arrayProblema2 = [1,2,7,7,7,7,7,7,3,34]
        Problema2(x: arrayProblema2)
        //Problema 3
        let arrayProblema3 = [1,2,3,4,4,4]
        let respuesta3 = Problema3(x: arrayProblema3)
        print(respuesta3)
        //Problema 4
        let arrayProblema4 = [8,7]
        let respuesta4 = Problema4(x: arrayProblema4)
        print(respuesta4)
        
        //Problema 5
        let arrayProblema5 = [20,1,5,8,9,6,22,30]
        let respuesta5 = Ordenamiento(x: arrayProblema5)
        print(respuesta5)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
