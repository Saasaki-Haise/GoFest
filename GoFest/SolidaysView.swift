//
//  ContentView.swift
//  Solidays
//
//  Created by Merlet Willy on 30/01/2020.
//  Copyright © 2020 Willy Merlet. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Solidays")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
            }
            HStack {
                Image("solidays")
                .resizable()
                .aspectRatio(contentMode: .fit)
                }
            HStack{
                Image("niska")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("riles")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("aya")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("zola")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Participez")
                    .font(.title)
                    .padding()
                    .foregroundColor(Color.white)
                        .background(Color.green)
                    .cornerRadius(10)
                }
                }
                HStack {
                    Text("Solidays est un festival de musique organisé par l'association Solidarité sida, depuis 1999, sur l'hippodrome ParisLongchamp. Ce festival pas comme les autres rassemble chaque année, artistes, conférenciers, militants et près de 228 000 festivaliers pour 3 jours de musique et de solidarité. On y parle santé sexuelle mais aussi droits humains, environnement et engagement de la jeunesse. Les dates de Solidays 2020 sont 19 Juin au 21 Juin 2020.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                      Spacer()
                

            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
