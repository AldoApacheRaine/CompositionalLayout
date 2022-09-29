//
//  HeaderCollectionReusableView.swift
//  CompositionalLayout
//
//  Created by Максим Хмелев on 29.09.2022.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
       
    private let headerLabel: UILabel = {
       let label = UILabel()
        label.text = "Header"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .systemBackground
        addSubview(headerLabel)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureHeader(categoryName: String) {
        headerLabel.text = categoryName
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            headerLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
}
