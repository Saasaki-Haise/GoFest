//
//  ContentView.swift
//  GoFestPageLogin
//
//  Created by Mortaza Behboudi on 29/01/2020.
//  Copyright © 2020 GoFest. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var username = ""
    @State var password = ""
    
var body: some View {
    
    ZStack {
        
        Image("BACKGROUND")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .offset(x: 0, y: -5)
        
        VStack {
            
            Text("Go Fest")
                .font(.system(size: 60.0))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .background(Color.clear)
                .offset(x: 0, y: -240)

            Text("Sign in")
                .font(.title)
                .fontWeight(.regular)
                .foregroundColor(Color.white)
                .offset(x: 0, y: -30)
                .background(Color.clear)
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $username)
                .padding(.all)
                .background(Color.white)
                .cornerRadius(20)
               
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $password)
                .padding(.all)
                .background(Color.white)
                .cornerRadius(20)
               
            
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Sign in")
                .font(.title)
                .fontWeight(.regular)
                .foregroundColor(Color.white)
         
                .padding(.horizontal, 28.0)
                .padding(8)
                .background(Color.gray)
                .cornerRadius(20)
                .offset(x: 0, y: 50)
            
            
            }
        }
        }
        }
    }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
