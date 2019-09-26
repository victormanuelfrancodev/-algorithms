import UIKit
import XCTest

class SaltosRanita:XCTestCase{
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test(){
        print(jumpFrog(a: 10, b: 85, c: 30))
    }
    
    func jumpFrog(a:Int,b:Int,c:Int)->Int{
        
        var count = 0
        if ((b-a)%c != 0){
            count += 1
        }
        return (b-a).quotientAndRemainder(dividingBy: c).quotient + count
    }
}

SaltosRanita.defaultTestSuite.run()


