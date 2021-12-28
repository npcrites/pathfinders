//
//  PathFindersTripView.swift
//  PathFinders
//
//  Created by Camille Mince on 12/28/21.
//

import SwiftUI

struct PathFindersTripView: View {
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
            Text("Path Finders Trips")
        }
    }
}

struct PathFindersTripView_Previews: PreviewProvider {
    static var previews: some View {
        PathFindersTripView()
    }
}
