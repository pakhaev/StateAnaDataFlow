//
//  LogoutView.swift
//  StateAnaDataFlow
//
//  Created by Khusain on 15.06.2023.
//

import SwiftUI

struct LogoutView: View {
    
    @EnvironmentObject var user: UserSettings
    
    var body: some View {
        Button(action: logout) {
            Text("Logout")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        }
    }
    
    private func logout() {
        user.delete()
    }
}

struct LogoutView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutView()
    }
}
