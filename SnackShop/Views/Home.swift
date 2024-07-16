//
//  Home.swift
//  SnackShop
//
//  Created by Gontse on 2024/07/16.
//

import SwiftUI

struct Home: View {
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
            .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
        }
      }
      .padding(40)
      
    }
  }
}
