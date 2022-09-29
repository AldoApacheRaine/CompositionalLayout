//
//  ExampleCollectionViewCell.swift
//  CompositionalLayout
//
//  Created by Максим Хмелев on 28.09.2022.
//

import UIKit

class ExampleCollectionViewCell: UICollectionViewCell {
    
    private let burgerImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "burger1")
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
        layer.cornerRadius = 10
        addSubview(burgerImageView)
    }
    
    func cellConfigure(imageName: String) {
        burgerImageView.image = UIImage(named: imageName)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            burgerImageView.topAnchor.constraint(equalTo: topAnchor),
            burgerImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            burgerImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            burgerImageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
