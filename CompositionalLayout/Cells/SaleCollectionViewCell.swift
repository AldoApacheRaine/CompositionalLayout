//
//  SaleCollectionViewCell.swift
//  CompositionalLayout
//
//  Created by Максим Хмелев on 28.09.2022.
//

import UIKit

class SaleCollectionViewCell: UICollectionViewCell {
    
    private let saleImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .systemBackground
        addSubview(saleImageView)
    }
    
    func cellConfigure(imageName: String) {
        saleImageView.image = UIImage(named: imageName)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            saleImageView.topAnchor.constraint(equalTo: topAnchor),
            saleImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            saleImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            saleImageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
