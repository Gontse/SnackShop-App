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
        .padding(.horizontal, 30)
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



