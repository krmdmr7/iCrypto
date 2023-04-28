//
//  CryptoDetailController.swift
//  iCrypto Api
//
//  Created by Kerem Demır on 28.04.2023.
//

import UIKit

class CryptoDetailController: UIViewController {
    //MARK: - UI Elements
    private let coin: CoinModel
    //MARK: - Properties
    
    //MARK: - Life Cycle
    init(_ coin: CoinModel) {
        self.coin = coin
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Functions
    private func configureUI(){
        
    }
    //MARK: - Actions

}
