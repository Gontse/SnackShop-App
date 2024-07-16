//
//  Product.swift
//  SnackShop
//
//  Created by Gontse on 2024/07/16.
//

import SwiftUI

enum ProductCategory: String {
  case choco = "Choco"
  case chips = "Chips"
}

struct Product: Identifiable {
  var id: UUID = .init()
  var name: String
  var category: ProductCategory
  var image: String
  var color: Color
  var price: Double
}

var productList = [
  Product(name: "Good Source", category: .choco, image: "", color: .pink, price: 10.00),
  Product(name: "Unreal Muffins", category: .choco, image: "", color: .blue, price: 10.00),
  Product(name: "TwisterChips", category: .chips, image: "", color: .yellow, price: 10.00),
  Product(name: "Regular Nature", category: .chips, image: "", color: .green, price: 10.00),
  Product(name: "Deep River", category: .chips, image: "", color: .orange, price: 10.00),
]

