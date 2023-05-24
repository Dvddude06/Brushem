//
//  warning.swift
//  Brushem
//
//  Created by David Beach on 2023-05-16.
//

import SwiftUI

struct warning: View {
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(Color.red)
                .ignoresSafeArea()
            VStack(spacing: 40){
                Image(systemName: "exclamationmark.triangle.fill")
                    .font(.system(size: 90))
                    .foregroundColor(Color.white)
                Text("Brush your Teeth!")
                    .foregroundColor(Color.white)
                    .font(.system(size: 35, weight: .bold))
                Text("Not brushing your teeth can let plaque build up which can lead to a build up in bacteria and cause infection. Brush your teeth to help prevent this.")
                    .foregroundColor(Color.white)
                    .font(.system(size: 25, weight: .bold))
                    
                Text("Press \(Image(systemName: "chevron.backward"))Back to exit")
                    .foregroundColor(Color.white)
                    
                Spacer()
            }
            .padding()
        }
        .accentColor(.white)
    }
}

struct warning_Previews: PreviewProvider {
    static var previews: some View {
        warning()
    }
}
