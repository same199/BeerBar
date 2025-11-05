//
//  Beer.swift
//  BeerBar
//
//  Created by LizOk&Same on 25.10.25.
//

final class Beer{

    let beerName: String
    let beerPrice: Double
    var countOfBottles: Int
    let minCountOfBottles: Int = 0
    var maxCountOfBottles: Int = 100
    
    init(
        beerName: String,
        beerPrice: Double,
        countOfBottles: Int = 0
    ){
        self.beerName = beerName
        self.beerPrice = beerPrice
        self.countOfBottles = countOfBottles
    }
    func minusBeer() -> Bool{
        if countOfBottles > minCountOfBottles {
            countOfBottles -= 1
            return true
        }else{
            return false
        }
    }
    func plusBeer() -> Bool{
        if countOfBottles <= maxCountOfBottles{
            countOfBottles += 1
            return true
        }else{
            return false
        }
    }
    
    func sellBeer() -> Double{
        if countOfBottles > 0{
            let sellBeerResult = Double(countOfBottles) * beerPrice
            return sellBeerResult
        }else {
            return 0.0
        }
    }
}
