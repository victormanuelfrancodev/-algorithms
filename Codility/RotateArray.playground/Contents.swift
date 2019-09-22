import UIKit
import XCTest

class RotateArray: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func test(){
        
        XCTAssertEqual(rotate(A: [2,5,7,1], numRotation: 10),[5,7,1,2])
    }
    
    func rotate(A:[Int],numRotation:Int)->[Int]{
        
        let rotation =  numRotation % A.count
    
        return A.suffix(rotation) + A.dropLast(rotation)
    }
}

RotateArray.defaultTestSuite.run()

