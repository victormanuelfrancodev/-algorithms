import UIKit
import XCTest

class BinaryGap: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func test(){
        //Unit Test
        // 20  = 10100
        XCTAssertEqual(binaryGap(num: 20), 1)
        //529 1000010001
        XCTAssertEqual(binaryGap(num: 529), 4)
        //15 100000
        XCTAssertEqual(binaryGap(num: 15), 0)
    }
    
    func binaryGap(num:Int)->Int{
        //Convertimos en binario
        var binaryNumber:String = String(num,radix: 2)
        //Reversamos el binario para poder eliminar los 0 del principio, hasta encontrar un 1
        binaryNumber = String(binaryNumber.reversed())
        //Guardamos el arreglo temporal
        var binaryNumberTmp:String = binaryNumber
        var answer = 0
        //Eliminamos los 0 del principio
        for i in 0..<binaryNumber.count{
            if Array(binaryNumber)[i] == "0"{
                binaryNumberTmp.removeFirst()
            }else{
                //Si encuentro un 1, me salgo
                break
            }
        }
        //Separo la cadena por los 1 que encuentre,la convierto en arreglo
        let binaryNumberArray:[String] = binaryNumberTmp.components(separatedBy: "1")
        //Busco el string que tenga mayor longitud
        for i in binaryNumberArray{
            if i.count > answer{
                answer = i.count
            }
        }
        return answer
    }
}

BinaryGap.defaultTestSuite.run()
