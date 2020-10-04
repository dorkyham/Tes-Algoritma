import UIKit

func rotateLeft(arrayInt : [Int], numOfRotation : Int) {
    let rn = numOfRotation % arrayInt.count
    var result = arrayInt.dropFirst(rn)
    result.append(contentsOf: arrayInt.dropLast(arrayInt.count - rn ))
    print(result)
}

rotateLeft(arrayInt: [1,2,3,4,5,6], numOfRotation: 3)
