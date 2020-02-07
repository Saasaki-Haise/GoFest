//
//  ContentView.swift
//  Niska
//
//  Created by Merlet Willy on 30/01/2020.
//  Copyright © 2020 Willy Merlet. All rights reserved.
//

import SwiftUI


struct Apparence: Identifiable {
    var id = UUID()

var title = String()
var imageName = String()
var lieu = String()
var date = String()



}



struct ArtistView: View {
    
    var apparences: [Apparence] = [
        Apparence( title: "Papillons de Nuit", imageName: "pap", lieu: "Saint-Pois", date: "29/05/2020"),
        Apparence(title: "Festival de Poupet", imageName: "poupet", lieu: "Saint-Malo-Du-Bois", date: "01/07/2020"),
        Apparence(title: "Musilac", imageName: "musila", lieu: "Aix-Les-Bains", date: "11/01/2020"),
        Apparence(title: "Le Cabaret Vert", imageName: "cabaret", lieu: "Charleville", date: "20/08/2020")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    Image("niska")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                DetailArtist()
            
            
            List(apparences) {
        apparence in
                VStack(alignment: .leading) {
               
                    HStack {
                    Text(apparence.title)
                        .font(.title)
                    .foregroundColor(Color.red)
                        .fontWeight(.bold)
                     Spacer()
                    Text(apparence.date)
                        .font(.headline)
                        .fontWeight(.medium)
                    .foregroundColor(Color.blue)
                    }
                Image(apparence.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                HStack {
                   
                    Image(systemName: "map")
                    Text(apparence.lieu)
                    Spacer()
                    
                }
                
                 }
            }
            .frame(height: 500.0)
          
            }
                    
                   
        }
                
        }.navigationBarTitle("Niska")
            
    }
        
}
    

struct ArtistView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistView()
    }
}


struct DetailArtist: View {
    var body: some View {
        VStack(alignment: .center){
            Text("Niska, nom de scène de Stanislas Dinga Pinto est un rappeur français originaire d'Évry, en Essonne, né le 6 avril 19944 à Villeneuve-Saint-Georges.")
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Spacer()
            
            
    
            
            
            Text("Liste apparences:")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
        }
        .frame(height: 150.0)
    }
}
