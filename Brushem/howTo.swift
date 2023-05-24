//
//  howTo.swift
//  Brushem
//
//  Created by David Beach on 2023-05-16.
//

import SwiftUI

struct howTo: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color(red: 113/255, green: 97/255, blue: 239/255))
            VStack {
                Text("How to brush your teeth:")
                    .padding()
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(Color.white)
                
                    Group{
                        Text("1. Get a toothbrush")
                        Text("2. Put toothpaste on your toothbrush")
                        Text("3. Wet the toothbrush with water")
                        Text("4.Put the toothbrush into your mouth")
                        Text("5. Brush your teeth in a circular motion for two minutes")
                        
                    }
                    .padding(.top, 40)
                    .padding()
                    .font(.system(size: 22))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(red: 239/255, green: 217/255, blue: 206/255))
                
                
                Spacer()
                    
            }
            
        }
    }
}

struct howTo_Previews: PreviewProvider {
    static var previews: some View {
        howTo()
    }
}
