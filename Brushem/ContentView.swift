//
//  ContentView.swift
//  Brushem
//
//  Created by David Beach on 2023-05-16.
//

import SwiftUI

struct ContentView: View {
    
    init() {
       UITabBar.appearance().backgroundColor = UIColor.white
     }
    
    var body: some View {
        
            TabView{
                howTo()
                    .tabItem{
                        Label("How To", systemImage: "list.bullet.rectangle.fill")
                            
                    }
                count()
                    .tabItem{
                        Label("Brush Tracking", systemImage: "chart.bar.fill")
                            
                    }
                
            }
            .accentColor(.purple)
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

