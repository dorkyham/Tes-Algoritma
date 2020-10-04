//: [Previous](@previous)

import Foundation

func getLatestRank(ranked: [Int], player: [Int]) -> [Int]{
    //Write your code here
    var rankedArray = ranked
    var j = 0
    var i = 0
    var rank = 1
    var rankOfPlayer : [Int] = []
    rankedArray = rankedArray.sorted { $0 > $1 }
    
    while i < player.count{
        j = 0
        rank = 1
        while j < rankedArray.count{
            if player[i] >= rankedArray[j]{
                print(rankedArray)
                break
            }
            if j != rankedArray.count - 1 && rankedArray[j] != rankedArray[j+1] {
                rank+=1
                j+=1
            }
            else{
                rank+=1
                j+=2
            }
            
        }
        rankOfPlayer.append(rank)
        rankedArray.append(player[i])
        rankedArray = rankedArray.sorted { $0 > $1 }
        i+=1
    }
    
    return rankOfPlayer
}

print(getLatestRank(ranked: [200, 150, 150, 90], player: [80, 90, 210]))


//: [Next](@next)
