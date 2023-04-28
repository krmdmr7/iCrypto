//
//  CoinModel.swift
//  iCrypto Api
//
//  Created by Kerem Demır on 28.04.2023.
//

import Foundation

struct CoinModel {
    let id: Int
    let name: String
    let max_supply: Int?
    let cmc_rank: Int
    let quote: Quote
    
    struct Quote {
        let CAD: CAD
        
        struct CAD {
            let price: Double
            let market_cap: Double
        }
    }
}

extension CoinModel {
    public static func getMockArray() -> [CoinModel]{
        return [
            CoinModel(
                id: 1,
                name: "Bitcoin",
                max_supply: 200,
                cmc_rank: 1,
                quote: Quote(CAD: Quote.CAD(price: 50000, market_cap: 1000000))
            ),
            CoinModel(
                id: 1,
                name: "Ethereum",
                max_supply: nil,
                cmc_rank: 2,
                quote: Quote(CAD: Quote.CAD(price: 12000, market_cap: 500000))
            ),
            CoinModel(
                id: 1,
                name: "Monero",
                max_supply: nil,
                cmc_rank: 3,
                quote: Quote(CAD: Quote.CAD(price: 200, market_cap: 30000))
            )
        ]
    }
}
