//
//  Home.swift
//  SnackShop
//
//  Created by Gontse on 2024/07/16.
//

import SwiftUI

struct Home: View {
  
  @State private var selectedCategory = ""
  
  var body: some View {
    ScrollView {
      VStack {
        //MARK: - Header
        HStack {
          Text("Order From The Best Of **Snacks**")
            .font(.system(size: 36))
            .padding(.trailing)
          
          Spacer()
          
          Image(systemName: "line.3.horizontal")
            .imageScale(.large)
            .padding()
            .frame(width: 70, height: 90)
            .overlay(RoundedRectangle(cornerRadius: 50)
              .stroke().opacity(0.4))
        }
      }
      .padding(30)
      // MARK: - CategoryList
      CategoryListView
      
     // MARK: - Collection View
      HStack {
        Text("Choco **Collections**")
          .font(.system(size: 24))
        
        Spacer()
        
        Image(systemName: "arrow.right")
          .imageScale(.large)
      }
      .padding(.horizontal, 30)
      .padding(.vertical, 15)
      
      // MARK: - Product List
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack {
          ForEach(productList, id: \.id) { product in
            ProductCard(product: product)
          }
        }
      }
      
    }
  }
  
  var CategoryListView: some View {
    HStack {
      ScrollView(.horizontal, showsIndicators: false) {
        HStack{
          ForEach(categoryList, id: \.id) { item in
            Button {
              selectedCategory = item.title
            } label: {
              HStack {
                if item.title.capitalized != "All" {
                  Image(item.icon)
                    .foregroundColor(selectedCategory == item.title ? .white : .black)
                }
                Text(item.title)
              }
              .padding()
              .background(selectedCategory == item.title ? .black : .gray.opacity(0.1))
              .foregroundColor(selectedCategory == item.title ? .white : .black)
              .clipShape(Capsule())
            }
          }
        }
      }
    }
  }
}

#Preview {
    Home()
}

struct ProductCard: View {
  
  var product: Product
  
  var body: some View {
    ZStack {
      VStack(alignment: .leading) {
        Text("\(product.name)")
          .font(.system(size: 30, weight: .semibold))
        
        Text(product.category.rawValue)
          .font(.callout)
          .padding()
          .background(.white.opacity(0.5))
          .clipShape(Capsule())
      }
    }
    .padding()
    .frame(width: 336, height: 422)
    .background(product.color.opacity(0.2))
    .clipShape(.rect(cornerRadius: 57))
    .padding(.leading, 20)
  }
}
