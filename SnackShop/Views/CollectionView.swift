//
//  CollectionView.swift
//  SnackShop
//
//  Created by Gontse on 2024/07/20.
//

import SwiftUI

struct CollectionView: View {
  var body: some View {
    NavigationView {
      ScrollView {
        VStack {
          HStack {
            Text("Order From The Best Of **Snacks**")
              .font(.system(size: 36))
              .padding(.trailing)
            
            Spacer()
            
            Image(systemName: "arrow.left")
              .imageScale(.large)
              .padding()
              .frame(width: 70, height: 90)
              .overlay(RoundedRectangle(cornerRadius: 50)
                .stroke().opacity(0.4))
          }
        }
        .padding(30)
      }
    }
  }
}

#Preview {
  CollectionView()
}
