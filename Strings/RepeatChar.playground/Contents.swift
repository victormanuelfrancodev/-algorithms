import UIKit

func isNotRepeat(phase:String)->Bool{
    //Preguntamos si es mayor de 128, si es, alguna letra se a repetido
    if(phase.count > 128){return false}
    //Arreglo que simula los caracteres ascii, todos en false
    var char_set:[Bool] = []
    for _ in 0..<127{
        char_set.append(false)
    }
    for i in 0..<phase.count{
        let checkChar = phase.index(phase.startIndex, offsetBy: i)
        let asciiVal:Int = Int(phase[checkChar].asciiValue!)
        //Verificamos si ya es true (si es true, quiere decir que ya fue escrita
        if(char_set[asciiVal]){
            return false
        }
        char_set[asciiVal] = true
    }
    return true
}
//Debe arrojar un false,ya que la e se repite
print(isNotRepeat(phase: "ejemplo"))
