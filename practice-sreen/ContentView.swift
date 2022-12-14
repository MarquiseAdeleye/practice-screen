//
//  ContentView.swift
//  practice-sreen
//
//  Created by Marquise Adeleye on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    var foodsToEat = ["Slugs ๐", "Eyeballs ๐๏ธ", "Onions ๐ง"]
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
                            
                            Text ("Slugs ๐")
                            Text ("Eyeballs ๐๏ธ")
                            Text ("Onions ๐ง")
                            
                        } header: {
                            Image (systemName: "fork.knife")
                            Text ("Food To Eat")
                        }
                        
                        
                            Section (header:
                                        HStack{
                                Image (systemName: "theatermask.fill")
                                Text ("Places To Visit")
                                
                            }){
                                Text ("Far Far Away ๐ฐ")
                                Text ("Potion Factory ๐งช")
                                Text ("Burger Prince ๐")
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
