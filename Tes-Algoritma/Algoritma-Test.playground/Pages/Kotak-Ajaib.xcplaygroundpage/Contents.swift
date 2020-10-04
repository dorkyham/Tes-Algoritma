//: [Previous](@previous)

import Foundation

func makeMagicSquare(matrixArr:[[Int]]) {
    var i = 0
    var j = 0
    let matrix = matrixArr
    var totalSum : [Int] = []
    
    var sum1 = 0
    var sum2 = 0
    var sum3 = 0
    var max = 0
    
    while i < 3{
        j = 0
        sum1 = 0
        sum3 = 0
        sum2 = 0
        while j < 3{
            sum1 += matrix[i][j]
            sum2 += matrix[j][i]
            if max > sum1{
                max = sum1
            }
            if max > sum2{
                max = sum2
            }
            totalSum.append(sum1)
            totalSum.append(sum2)
            
            j+=1
        }

        sum3 += matrix[i][i]

        totalSum.append(sum3)
        i+=1
    }

    print(totalSum)
    totalSum = totalSum.sorted { $0 > $1 }
    print(totalSum[0]) //print nilai tertinggi
    
    i=0
    j=0
    
    //print matriks
    while i < 3 {
        print(matrix[0][i],matrix[1][i],matrix[2][i])
        i+=1
    }

}

makeMagicSquare(matrixArr: [[3,4,2],[1,2,5],[4,7,6]])

