//
//  ContentView.swift
//  Week06-Lev
//
//  Created by Levitia on 13/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //   HomeView()
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
