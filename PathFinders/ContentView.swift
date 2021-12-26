//
//  ContentView.swift
//  PathFinders
//
//  Created by Camille Mince on 12/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    GeometryReader { geometry in
                        HStack(spacing: 0) {
                            Text("Good evening, Nick.")
                                .padding(.leading)
                                .frame(width: geometry.size.width * 0.67, alignment: .leading)
                            Text("App Icon")
                                .frame(width: geometry.size.width * 0.167)
                            Text("Account Page Icon")
                                .padding(.trailing)
                                .frame(width: geometry.size.width * 0.163)
                        }
                    }
                    .padding(.bottom)
                    .frame(height: geometry.size.height * 0.10, alignment: .topLeading)
                    
                    Spacer()
                    
                    //item 2{} VStack of buttons
                    VStack {
                        HStack {
                            Spacer()
                            Button {
                                   // flag was tapped
                                } label: {
                                   Text("Saved Ideas")
                                }
                                .padding(.all)
                            Spacer()
                        }
                    
                        Spacer()
                        
                        HStack {
                            Spacer()
                            Button {
                                   // flag was tapped
                                } label: {
                                   Text("My Preferences")
                                }
                                .padding(.all)
                            Spacer()
                        }
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            Button {
                                   // flag was tapped
                                } label: {
                                   Text("PathFinder Trips")
                                }
                                .padding(.all)
                            Spacer()
                        }
                    }.padding(.bottom)
                    .frame(height: geometry.size.height * 0.50,
                        alignment: .topLeading)
                    
                    Spacer()
                    
                    //item 3{}
                    VStack(alignment: .leading){
                        Text("Trip History")
                            .padding(.leading)
                        
                        GeometryReader { geometry in
                            HStack(spacing: 0) {
                                Text("Map image here")
                                    .frame(width: geometry.size.width * 0.67)
                                Text("VStack of buttons")
                                    .padding(.trailing)
                                    .frame(width: geometry.size.width * 0.33)
                            }
                        }
                        .padding(.bottom)
                        .frame(height: geometry.size.height * 0.40,
                            alignment: .topLeading)
                        
                    }
                }
            }
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Dashboard")
                        
                        
                }
                Text("Create New Trip")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Create")
                }
                Text("Calendar")
                    .tabItem {
                        Image(systemName: "mappin.circle.fill")
                        Text("Calendar")
                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
