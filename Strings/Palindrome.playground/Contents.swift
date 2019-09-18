import UIKit
import XCTest

class Palindrome: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func test(){
       
        XCTAssertEqual(isPalindrome(txt: "anita"), false)

        XCTAssertEqual(isPalindrome(txt: "anita lava la tina"), true)
       
        XCTAssertEqual(isPalindrome(txt: "reloj"), false)
    }
    
    func isPalindrome(txt:String)->Bool{
      
        let clearTxt = txt.replacingOccurrences(of: " ", with: "")
        let txtLenght = clearTxt.count
        for i in 0..<txtLenght/2 {
            if(Array(clearTxt)[i] != Array(clearTxt)[txtLenght-i-1]){
                return false
            }
        }
        return true
    }
}

Palindrome.defaultTestSuite.run()
