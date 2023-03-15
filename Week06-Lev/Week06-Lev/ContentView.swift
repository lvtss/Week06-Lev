//
//  ContentView.swift
//  Week06-Lev
//
//  Created by Levitia on 13/03/2023.
//t

import Foundation
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
                
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

