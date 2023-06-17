//
//  TextFieldView.swift
//  StateAnaDataFlow
//
//  Created by Khusain on 15.06.2023.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var nameCount = 0
    @State private var textColor = Color.red
    
    @Binding var name: String
    @Binding var buttonDisabled: Bool
    
    var body: some View {
        HStack {
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
            Text(nameCount.formatted())
                .foregroundColor(textColor)
        }
        .onChange(of: name) { _ in
            nameCount = name.count
            
            if nameCount >= 3 {
                buttonDisabled = false
                textColor = .green
            } else {
                buttonDisabled = true
                textColor = .red
            }
        }
        .padding(20)
    }
}

//struct TextFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextFieldView()
//    }
//}
