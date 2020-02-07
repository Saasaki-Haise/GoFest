//
//  page2.swift
//  festivaPage
//
//  Created by saad  on 29/01/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import SwiftUI

struct Valider: View {
    
   
    
   @State var name: String = ""
        var body: some View {
            
            
    ZStack{
        
            
                Image("background2")
                    .resizable()
                    .foregroundColor(Color.purple)
                    .aspectRatio(contentMode: .fit)
                        
                    
            
            VStack (alignment: .leading, spacing: 20){

           
                // 1.
                Text("Participer")
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                Spacer()
                
                // 2.
                HStack {
                    Text("Nom:          ")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                TextField("entrer votre nom", text: $name)
                    .border(Color.gray)                        .font(.body)
                    .background(Color.white)


                }
                HStack {
                    Text("Prénom:     ")
                        .font(.body).fontWeight(.bold)
                        .foregroundColor(Color.white)
                TextField("entrer votre prénom", text: $name)
                    .border(Color.gray)                        .font(.body)                    .background(Color.white)


                }
                HStack {
                    Text("Téléphone:")
                        .font(.body).fontWeight(.bold)
                        .foregroundColor(Color.white)
                TextField("votre numéro de téléphone", text: $name)
                    .border(Color.gray)                        .font(.body)                    .background(Color.white)


                }
                HStack {
                    Text("e-mail:       ")
                        .font(.body) .font(.body).fontWeight(.bold)
                                               .foregroundColor(Color.white)
                TextField("votre e-mail", text: $name)
                    .border(Color.gray)                        .font(.body)                    .background(Color.white)


                }
                // 3.
            //    Text("\(name)")
                
                 // 3.
                Spacer()
                
                
                NavigationLink( destination: Page()) {
                                 Text(" Valider votre choix ")
                                     .font(.title)
                                     
                                     .padding()
                                     .background(Color.green)
                                     .foregroundColor(Color.white)
                                     .cornerRadius(10)
                                     .offset(x: 60, y: 0)
                                 
                }
            }
            .padding()
            .font(.title)
        }
    }
            
    }

struct Valider_Previews: PreviewProvider {
    static var previews: some View {
        Valider()
    }
}
