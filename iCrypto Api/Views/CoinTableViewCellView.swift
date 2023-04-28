//
//  CoinCell.swift
//  iCrypto Api
//
//  Created by Kerem Demır on 28.04.2023.
//

import Foundation
import UIKit

class CoinTableViewCellView: UITableViewCell {
    static let identifier = "CoinCell"
    
    //MARK: - Variables
    
    private(set) var coin: CoinModel!
    
    //MARK: - UI Components
    
    private let coinLogo: UIImageView = {
        let coinLogo = UIImageView()
        coinLogo.translatesAutoresizingMaskIntoConstraints = false
        coinLogo.image = UIImage(systemName: "questionmark")
        coinLogo.contentMode = .scaleAspectFit
        coinLogo.tintColor = .label
        coinLogo.backgroundColor = .systemBlue
        return coinLogo
    }()
    
    private let coinName:UILabel = {
        let coinName = UILabel()
        coinName.translatesAutoresizingMaskIntoConstraints = false
        coinName.font = .systemFont(ofSize: 22, weight: .semibold)
        coinName.textAlignment = .left
        coinName.text = "Bitcoin"
        coinName.tintColor = .label
        return coinName
    }()
    
    //MARK: - Life Cycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with coin: CoinModel){
        coinName.text = coin.name
    }
    
    //TODO: - Prepare for Reuse
    
    //MARK: - UI Configure
    private func configureUI(){
        addSubview(coinLogo)
        addSubview(coinName)
        NSLayoutConstraint.activate([
            coinLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
            coinLogo.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            coinLogo.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.75),
            coinLogo.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.75),
            
            coinName.leadingAnchor.constraint(equalTo: coinLogo.trailingAnchor, constant: 16),
            coinName.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
