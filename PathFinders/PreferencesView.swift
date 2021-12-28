//
//  PreferencesView.swift
//  PathFinders
//
//  Created by Camille Mince on 12/28/21.
//

import SwiftUI

struct PreferencesView: View {
    @State var backToHome = false
    var body: some View {
        if backToHome {
            ContentView()
        } else {
            Button {
                backToHome = true
                } label: {
                   Text("Back")
                }
            Text("Preferences")
        }
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView()
    }
}
