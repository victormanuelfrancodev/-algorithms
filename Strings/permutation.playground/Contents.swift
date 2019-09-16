import UIKit

func isPermutation(textA:String,textB:String)->Bool{
    if (textA.count != textB.count){
        return false
    }
    return textA.sorted() == textB.sorted()
}


print(isPermutation(textA: "hola", textB: "aloh"))
