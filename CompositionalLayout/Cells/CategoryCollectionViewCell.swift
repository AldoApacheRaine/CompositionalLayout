//
//  CategoryCollectionViewCell.swift
//  CompositionalLayout
//
//  Created by Максим Хмелев on 28.09.2022.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    private let categoryImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "categoryBurger")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Category"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                layer.borderWidth = 2
                layer.borderColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            } else {
                layer.borderWidth = 0
            }
        }
    }
    
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
        
        addSubview(categoryImageView)
        addSubview(categoryLabel)
    }
    
    func cellConfigure(categoryName: String, imageName: String) {
        categoryLabel.text = categoryName
        categoryImageView.image = UIImage(named: imageName)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            categoryLabel.heightAnchor.constraint(equalToConstant: 16),
            categoryLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            categoryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            categoryLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            categoryImageView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            categoryImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            categoryImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            categoryImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5)
        ])
    }
}


