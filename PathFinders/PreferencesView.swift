//
//  PreferencesView.swift
//  PathFinders
//
//  Created by Camille Mince on 12/28/21.
//

import SwiftUI

struct PreferencesView: View {
    @State var backToHome = false
    @State var cityPreferences: [String]
    
    func removePref(array: inout [String], elt: String) -> [String] {
        let index = array.firstIndex(of: elt)
        array.remove(at: index!)
        return array
    }
    
    func buttonAction(text: String) {
        if self.cityPreferences.contains(text) {
            cityPreferences = removePref(array: &cityPreferences, elt: text)
        } else {
            cityPreferences.append(text)
        }
    }
    
    var body: some View {
        if backToHome {
            ContentView()
        } else {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    GeometryReader { geometry in
                        HStack(spacing: 0) {
                            Button {
                                backToHome = true
                                } label: {
                                   Text("Back")
                                }
                                .frame(width: geometry.size.width * 0.10, alignment: .leading)
                                .padding(.leading)
                            Text("MY PREFERENCES")
                                .frame(width: geometry.size.width * 0.57)
                            Text("Logo")
                                .frame(width: geometry.size.width * 0.167)
                            Text("Account Page Icon")
                                .padding(.trailing)
                                .frame(width: geometry.size.width * 0.163)
                        }
                    }
                    .padding(.top)
                    .padding(.bottom)
                    .frame(height: geometry.size.height * 0.10, alignment: .topLeading)
            
                    //Cities toggle buttons
                    Spacer()
                    
                    VStack (alignment: .leading){
                        Text("Cities").padding(.leading)
                        //table of buttons
                        //NY, Chicago, LA, San Francisco, New Orleans, Las Vegas, Orlando, Miami
                        //Houston, Seattle, Boston, Washington D.C., Philadelphia, Phoenix, St. Louis, Atlanta
                        VStack {
                            GeometryReader { geometry in
                                HStack(spacing: 0) {
                                    Button(action: {
                                        buttonAction(text: "New York City")
                                    }) {
                                        Text("New York City")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "Los Angeles")
                                    }) {
                                        Text("Los Angeles")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "San Francisco")
                                    }) {
                                        Text("San Francisco")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "New Orleans")
                                    }) {
                                        Text("New Orleans")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                }
                            }
                            
                            GeometryReader { geometry in
                                HStack(spacing: 0) {
                                    Button(action: {
                                        buttonAction(text: "Las Vegas")
                                    }) {
                                        Text("Las Vegas")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "Orlando")
                                    }) {
                                        Text("Orlando")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "Miami")
                                    }) {
                                        Text("Miami")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "Houston")
                                    }) {
                                        Text("Houston")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                }
                            }
                            
                            GeometryReader { geometry in
                                HStack(spacing: 0) {
                                    Button(action: {
                                        buttonAction(text: "Seattle")
                                    }) {
                                        Text("Seattle")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "Boston")
                                    }) {
                                        Text("Boston")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "Washington D.C.")
                                    }) {
                                        Text("Washington D.C.")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "Philadelphia")
                                    }) {
                                        Text("Philadelphia")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                }
                            }
                            
                            GeometryReader { geometry in
                                HStack(spacing: 0) {
                                    Button(action: {
                                        buttonAction(text: "Phoenix")
                                    }) {
                                        Text("Phoenix")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "St. Louis")
                                    }) {
                                        Text("St. Louis")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "Denver")
                                    }) {
                                        Text("Denver")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                    
                                    Button(action: {
                                        buttonAction(text: "Atlanta")
                                    }) {
                                        Text("Atlanta")
                                            .font(.footnote)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }.padding(.all)
                                     .frame(width: geometry.size.width * 0.25)
                                }
                            }
                        } //end of internal VStack
                    } //end of external VStack
                    .padding(.top)
                    .padding(.bottom)
                    .frame(height: geometry.size.height * 0.35, alignment: .topLeading)
                    
                    Spacer()
                        
                    VStack (alignment: .leading){
                        Text("Activities").padding(.leading)
                    } //end of activities external vstack
                    .padding(.top)
                    .padding(.bottom)
                    .frame(height: geometry.size.height * 0.55, alignment: .topLeading)
                } //close of geometry readers VStack
            
            } //close of geometry reader
            
            Spacer()
            
        } //end of else statement
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView(cityPreferences: [])
    }
}
