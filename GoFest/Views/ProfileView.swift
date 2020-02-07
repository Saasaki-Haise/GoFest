//
//  ContentView.swift
//  ProfilView
//
//  Created by Merlet Willy on 03/02/2020.
//  Copyright © 2020 Willy Merlet. All rights reserved.
//

import SwiftUI






struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
        VStack {
                ZStack {
            Image("photofest")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(10.0)
                .brightness(-0.15)
                   Image("spotify")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .offset(x:150)
                    VStack{
            Image("pers")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(height:150)
                        Text("Richard Perrin")
                            .font(.title)
                            .foregroundColor(Color.white)
                        
                        
                        Text("Paris")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        
                    }
                    }
            
            
            
            Text("Artistes favories")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            ScrollView(.horizontal) {
            HStack {
                
            Image("drake")
               .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            Image("shakira")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame( height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Image("malaa")
                .resizable()
                .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("claptone")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Image("tchami")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("beyoncé")
                    .resizable()
                .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("kanye")
                    .resizable()
                .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                
                }
            }
            
            Text("Festivals à venir")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            ScrollView(.horizontal) {
            HStack {
            Image("fest")
            .resizable()
            .aspectRatio(contentMode: .fit)
                .frame(height: 100)
            Image("fest2")
            .resizable()
            .aspectRatio(contentMode: .fit)
                .frame(height: 100)
            Image("fest3")
            .resizable()
            .aspectRatio(contentMode: .fill)
                .frame(height: 100)
            Image("fest4")
                .resizable()
                .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                Image("fest5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                Image("fest6")
                .resizable()
                .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
            }
            }
            Text("Mes amies")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            ScrollView(.horizontal) {
            HStack {
                    Image("perss")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Image("ami")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Image("persoo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Image("persoo3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("perso3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("perso4")
                .resizable()
                .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("perso5")
               .resizable()
               .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    
                }
            }
                Text("précèdents festivals")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                ScrollView(.horizontal) {
                HStack{
                    Image("festi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                    Image("festi2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                    Image("festi3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                    Image("festi4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                    Image("festi5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                    
                }
                }
            
          
               
            }
                
            }
            }
            
            
        
                
            
            }
        }
    


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
