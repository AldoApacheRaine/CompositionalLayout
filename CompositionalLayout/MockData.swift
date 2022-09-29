//
//  MockData.swift
//  CompositionalLayout
//
//  Created by Максим Хмелев on 28.09.2022.
//

import Foundation

struct MockData {
    
    static let shared = MockData()
    
    private let sales: ListSection = {
        .sales([.init(title: "", image: "salesBurger"),
                .init(title: "", image: "salesPizza"),
                .init(title: "", image: "salesWok")])
    }()
    
    private let category: ListSection = {
        .category([.init(title: "Burger", image: "categoryBurger"),
                   .init(title: "Chiken", image: "categoryChiken"),
                   .init(title: "Hot-Dog", image: "categoryHotdog"),
                   .init(title: "Pizza", image: "categoryPizza"),
                   .init(title: "Taco", image: "categoryTaco"),
                   .init(title: "Wok", image: "categoryWok")])
    }()
    
    private let example: ListSection = {
        .example([.init(title: "", image: "burger1"),
                  .init(title: "", image: "burger2"),
                  .init(title: "", image: "burger3")])
    }()
    
    var pageData: [ListSection] {
        [sales, category, example]
    }
}
