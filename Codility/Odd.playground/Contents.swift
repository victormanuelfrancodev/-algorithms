import UIKit
import XCTest

class NumeroImpar: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func test(){
        
        XCTAssertEqual(impar(A: [40,30,40,100,30]),100)
        XCTAssertEqual(impar(A: [1,2,3,5,3,2,1]),5)
    }
    
    func impar(A:[Int])->Int{
        var result = 0
        for x in A{
            result ^= x
        }
        
        return result
    }
}

NumeroImpar.defaultTestSuite.run()

