//
//  ContentView.swift
//  SwiftUI_CardViewExample
//
//  Created by cano on 2024/02/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CardView(title: "Total", price: 8000)
            
            CardView(title: "Drink", price: 2000)
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
