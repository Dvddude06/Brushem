//
//  Count.swift
//  Brushem
//
//  Created by David Beach on 2023-05-16.
//

import SwiftUI
import Lottie
struct count: View {
    @AppStorage ("brushNum") private var brushNum = 0
    @State var showAlert = false
    @State var play = false
    var body: some View {
        NavigationView{
        ZStack{
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color(red: 113/255, green: 97/255, blue: 239/255))
            
            //if showAnimation == true {

            //}

                VStack(){
                    Text("Brush Tracking:")
                        .font(.system(size: 37, weight: .bold))
                        .padding()
                        .foregroundColor(Color(red: 239/255, green: 217/255, blue: 206/255))
                    Text("You have: \(brushNum) brush points")
                        .font(.system(size: 25, weight: .bold))
                        .padding()
                        .foregroundColor(Color(red: 239/255, green: 217/255, blue: 206/255))
                    if brushNum == 0 {
                        Text("Click the \"Yes, I brushed em\" button below to add to your brushed points")
                            .foregroundColor(Color(red: 239/255, green: 217/255, blue: 206/255))
                    }
                    Rectangle()
                        .padding()
                        .frame(width: 360, height: 300)
                        .foregroundColor(Color.purple)
                        .overlay(
                            VStack{
                                Text("Did you brush em?")
                                    .foregroundColor(Color(red: 239/255, green: 217/255, blue: 206/255))
                                    .font(.system(size: 26, weight: .bold))
                                    .padding()
                                    .padding(.top, 20)
                                Button{
                                    showAlert = true
                                } label: {
                                    Rectangle()
                                        .frame(width: 200, height: 60)
                                        .foregroundColor(Color.green)
                                        .cornerRadius(15)
                                        .overlay(
                                            Text("Yes, I brushed em")
                                                .foregroundColor(Color.white)
                                                .padding()
                                        )
                                }
                                
                                .alert(isPresented:$showAlert) {
                                    Alert(
                                        title: Text("Did u really brush em?"),
                                        message: Text("legaly you can't lie about this"),
                                        primaryButton: .default(Text("Yes, I did Brush Em")) {
                                            brushNum += 100
                                            play = true
                                        },
                                        secondaryButton: .destructive(Text("I didn't really brush em 🥺")) {
                                            brushNum -= 50
                                        }
                                    )
                                }
                                
                                NavigationLink(destination: warning() ){
                                    Rectangle()
                                        .frame(width: 200, height: 60)
                                        .foregroundColor(Color.red)
                                        .cornerRadius(15)
                                        .overlay(
                                            Text("No, I did not")
                                                .foregroundColor(Color.white)
                                                .padding()
                                        )
                                }
                                Spacer()
                            }
                            
                        )
                    Spacer()
                    
                } // end of VStack
            LottiePlusView(name: "Confetti", play: $play)
                .allowsHitTesting(false)
                .id(brushNum)
            
            } // end of ZStack
            
        }
    } // body
} // struct

struct count_Previews: PreviewProvider {
    static var previews: some View {
        count()
    }
}
