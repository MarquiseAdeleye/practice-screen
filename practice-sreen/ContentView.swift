//
//  ContentView.swift
//  practice-sreen
//
//  Created by Marquise Adeleye on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    var foodsToEat = ["Slugs 🐌", "Eyeballs 👁️", "Onions 🧅"]
    var body: some View {
        NavigationView {

        ZStack {
            
                VStack {
                    
                    Text ("Shrek's To-Do List")
                        .font(.system(size: 32))
                        .bold()
                    Image("Shrek")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape (Circle())
                        .shadow(radius: 10)
                        .overlay (Circle().stroke (Color.white,lineWidth:5))
                    
                    List {
                        Section {
                            
                            Text ("Slugs 🐌")
                            Text ("Eyeballs 👁️")
                            Text ("Onions 🧅")
                            
                        } header: {
                            Image (systemName: "fork.knife")
                            Text ("Food To Eat")
                        }
                        
                        
                            Section (header:
                                        HStack{
                                Image (systemName: "theatermask.fill")
                                Text ("Places To Visit")
                                
                            }){
                                Text ("Far Far Away 🏰")
                                Text ("Potion Factory 🧪")
                                Text ("Burger Prince 🍔")
                            }
                        }
                    
                    
                    }

                .background(Color.green)
                .ignoresSafeArea()
                }
                    .padding()

                }
            }
        }

        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
