//
//  ContentView.swift
//  Filters
//
//  Created by Merlet Willy on 29/01/2020.
//  Copyright © 2020 Willy Merlet. All rights reserved.
//

import SwiftUI

 struct FiltreView: View {
    var pays = ["Tous","Albanie","Allemagne","Andorre","Autriche","Belgique","Biélorussie","Bosnie-Herzégovine","Bulgarie","Chypre","Croatie","Danemark","Espagne","Estonie","Finlande","France","Grèce","Hongrie","Irlande","Islande","Italie","Lettonie","Liechtenstein","Lituanie","Luxembourg","Macédoine","Malte","Moldavie","Monaco","Monténégro","Norvège","Pays-Bas","Pologne","Portugal","République Tchèque","Roumanie","Royaume Uni","Russie","Serbie","Slovaquie","Slovénie","Suède","Suisse","Ukraine"]
    var prix = ["0-20€","20-40€","40-60€","60-80€","80-100€","100-200€","200-300€","Any"]
    var type = ["pleine air","couvert"]
    var age = ["0-10","10-20","20-30","30-40","40-50","50-60","60-70","Tous"]
    var typemusic = ["Pop","Rap","House","Rock","Jazz","RnB","Classique","Disco","Funk","Blues","Reggae","Country","Electro","Zouk","Afro","Metal","Gospel","Tous"]
 @State private var selectedmusic = 0
@State private var selectedage = 0
@State private var selectedtype = 0
 @State private var selectedpays = 0
 @State private var selectedprix = 0
    var body: some View {
            NavigationView {
                Form {
        Picker(selection: $selectedpays, label: Text("Pays")) {
                            ForEach (0..<pays.count) {
                                Text(self.pays[$0])
                            }
                    
                        }
        Picker(selection: $selectedprix, label: Text("Prix")) {
                        ForEach(0..<prix.count) {
                            Text(self.prix[$0])
                        }
                    }
                    Picker(selection: $selectedtype, label: Text("Type")){
                        ForEach(0..<type.count) {
                            Text(self.type[$0])
                        }
                    }
                    Picker(selection: $selectedage, label: Text("Age")) {
                        ForEach(0..<age.count) {
                        Text(self.age[$0])
               }
               }
                    Picker(selection: $selectedmusic, label: Text("Type Musique")) {
                        ForEach(0..<typemusic.count) {
                            Text(self.typemusic[$0])
                        }
                    }
                    

               
                }.navigationBarTitle(Text("Filtres"), displayMode: .inline)
        }
}
}
struct FiltreView_Previews: PreviewProvider {
    static var previews: some View {
        FiltreView()
    }
}
