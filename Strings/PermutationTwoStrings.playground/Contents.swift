import UIKit
import XCTest


class PermutationOfTwoStrings: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func test(){
        
        XCTAssertEqual(checkPermutation(arrA: "pale",arrB: "ple"),true)
        XCTAssertEqual(checkPermutation(arrA: "pales",arrB: "pale"),true)
        XCTAssertEqual(checkPermutation(arrA: "pale",arrB: "bale"),true)
        XCTAssertEqual(checkPermutation(arrA: "pale",arrB: "bsle"),false)
        XCTAssertEqual(checkPermutation(arrA: "pale",arrB: "bae"),false)
        
    }
    
    func checkPermutation(arrA:String, arrB:String)->Bool{
        //Validamos que no vengan vacias
        guard !arrA.isEmpty && !arrB.isEmpty else { return false }
        //Si el primer string es igual al segundo string validamos que sean iguales en su contenido
        if arrA.count == arrB.count{
            //hacemos sorted para acomodar los valores de menor a mayor , en nuestro caso
            // ejemplo [a,c,b] = [a,b,c]
            //Esto nos servirá para poder comparar los string
            let a = arrA.sorted()
            let b = arrB.sorted()
            var counter = 0
            //Solo puede haber un caracter diferente, comprobamos si se cumple
            for x in 0..<a.count{
                if a.contains(b[x]){
                    counter += 1
                }
            }
            return a.count - 1 == counter
        }
            //En dado caso que no sean de igual tamaño, verificamos las otras dos opciones
            //se agrego un caracter nuevo o cambio un caracter de la cadena
        else{
            //Comprobamos cual es el string mas grande , en caso que sea A, moreBig le asignamos A,
            //De igual forma verificamos cual es el mas pequeño (Aunque aqui podriamos ahorrar 1 paso
            let moreBig = arrA.count > arrB.count ? arrA.sorted() : arrB.sorted()
            let moreSmall = arrA.count > arrB.count ? arrB.sorted(): arrA.sorted()
            var counter = 0
            //Vamos recorriendo el string mas pequeño, esto para buscar en el string grande si
            //el caracter viene dentro, si viene dentro el counter aumenta un uno, esto es para que si se repite , el tamaño del string sea diferente a counter, entonces ya no se cumpliria la solución y nos mandaria un false
            for x in 0..<moreSmall.count{
                if moreBig.contains(moreSmall[x]){
                    counter += 1
                }
            }
            return moreSmall.count == counter
        }
    }
}

PermutationOfTwoStrings.defaultTestSuite.run()
