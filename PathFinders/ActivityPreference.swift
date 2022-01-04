//
//  ActivityPreference.swift
//  PathFinders
//
//  Created by Camille Mince on 1/4/22.
//

import SwiftUI

enum ActivityType {
    case entertainment
    case dining
    case camp_rv
    case nightlife
}

struct ActivityPreference: View {
    @State var activity_type: ActivityType = .entertainment
    
    var body: some View {
        
        HStack (alignment: .top, spacing: 0) {
            Button {
                activity_type = .entertainment
            } label: {
                Text("Entertainment")
            }.padding(.all)
            
            Button {
                activity_type = .dining
            } label: {
                Text("Dining")
            }.padding(.all)
            
            Button {
                activity_type = .camp_rv
            } label: {
                Text("Camp/RV")
            }.padding(.all)
            
            Button {
                activity_type = .nightlife
            } label: {
                Text("Nightlife")
            }.padding(.all)
        }
        
        if activity_type == .entertainment {
            Text("Entertainment buttons")
        }
        
        else if activity_type == .dining {
            Text("Dining buttons")
        }
        
        else if activity_type == .camp_rv {
            Text("Camp/RV buttons")
        }
        
        else {
            Text("Nightlife buttons")
        }
    }
}

struct ActivityPreference_Previews: PreviewProvider {
    static var previews: some View {
        ActivityPreference(activity_type: .entertainment)
    }
}
