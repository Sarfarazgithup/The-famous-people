//
//  ContentView.swift
//  MyLogin
//
//  Created by Sarfaraz Ali on 30/03/23.
//


import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    let login = LoginView()
    var body: some View {
        NavigationView {
            ZStack{
                if isActive {
                   login
                } else {
                    Color.magentaColor .edgesIgnoringSafeArea(.all)
                    Image("hifzan")
                        .resizable()
                        .frame(width: 100,height:100)
                        .clipShape(Circle())
                        .shadow(radius:6)
                        .padding(.leading)
                }
               
            }.onAppear(perform: {
                self.gotoLoginScreen(time: 2)
            })
                
        }
    }
    

    func gotoLoginScreen(time: Double){
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(time)) {
            self.isActive = true
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
