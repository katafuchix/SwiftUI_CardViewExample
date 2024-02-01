//
//  Extensions.swift
//  SwiftUI_CardViewExample
//
//  Created by cano on 2024/02/01.
//

import SwiftUI

extension Int {
    func formatnumber(spector: String = ".") -> String {
        let formater = NumberFormatter()
        formater.groupingSeparator = spector
        formater.numberStyle = .decimal
        return formater.string(from: NSNumber(value: self))!
    }

    var withComma: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        let commaString = formatter.string(from: self as NSNumber)
        return commaString ?? "\(self)"
    }
}

extension View {
    // - CardView
    @ViewBuilder
    func CardView(title: String, price: Int) -> some View{
        HStack{
            VStack(alignment: .leading, spacing: 10) {
                Text(title)
                Text("$\(price.withComma)").font(.largeTitle)
                Text("Tax included")
                    .foregroundColor(.red)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 55, height: 55)
                    .background(Color.purple)
                    .clipShape(Circle())
                    .shadow(color: .black.opacity(0.15), radius: 5, x: 10, y: 10)
            }
        }
        .padding(20)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
        .padding()
    }
}
