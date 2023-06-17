//
//  LoginView.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var name = ""
    @State private var buttonDisabled = true
    
    @EnvironmentObject private var user: UserSettings
    @FocusState private var isInputActive: Bool
    
    
    var body: some View {
        ZStack {
            VStack {
                TextFieldView(name: $name, buttonDisabled: $buttonDisabled)
                    .focused($isInputActive)
                
                Button(action: login) {
                    HStack {
                        Image(systemName: "checkmark.circle")
                        Text("OK")
                    }
                }
                .disabled(buttonDisabled)
            }
            
        }
        .frame(maxHeight: .infinity)
        .onTapGesture {
            isInputActive = false
        }
    }
    
    private func login() {
        if !name.isEmpty {
            user.update(newName: name, logged: true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
