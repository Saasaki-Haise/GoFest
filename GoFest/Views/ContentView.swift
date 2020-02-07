//
//  ContentView.swift
//  GoFest
//
//  Created by Haise on 28/01/2020.
//  Copyright © 2020 Haise. All rights reserved.
//

import SwiftUI
import MapKit



struct ContentView: View {
     var festivals:[Festival] = [
           Festival(titre: "Lollapalooza", date: "30/0/2020", lieu: "Grant Park, Chicago", genre: "Ovni", imageName: "lolla", desc: "Lollapalooza est un festival de musique itinérant, se voulant underground au moment de sa création, qui a sillonné les États-Unis et le Canada tous les étés de 1991 à 1997. ... Depuis 2005, il se déroule à Chicago (États-Unis).", latitude: 41.8781136, longitude: 87.6297982),
           Festival(titre: "Coachella", date: "10/04/2020", lieu: "Indio, Californie", genre: "Hip-Hop, Pop, Electro", imageName: "coachella", desc: "Coachella est le roi des festivals éclectiques ! Chaque année, cette célébration musicale sans pareille attire les amoureux de festivals", latitude: 33.7205771, longitude: -72.5450779),
           Festival(titre: "Rock In Rio", date: "17/09/2019", lieu: "Rio de Janeiro, Brasil", genre: "Rock", imageName: "rock", desc: "Rock in Rio au Brésil est le plus grand festival du monde qui accueille plus d’un million de participants à chaque édition. Ce festival de musique se déroule en réalité un an sur deux à Rio.", latitude: -22.9068467, longitude: -43.1728965),
           Festival(titre: "Glastonburry", date: "24/06/2020", lieu: "Royaune-Unis", genre: "Ovni", imageName: "glasto", desc: "Ce festival de musique accueille des stars telles que Muse, Adele, Coldplay, Beck, PJ Harvey, Eart, Wind and Fire ! Il a lieu en Angleterre dans la région du Somerset", latitude: 41.6861794, longitude: -72.5450779),
           Festival(titre: "Benicássim", date: "18/07/2020", lieu: "Espagne", genre: "Ovni", imageName: "bena", desc: "Le soleil sera quasiment sûr de briller au dessus de vos têtes ! La programmation du festival est toujours impressionnante. Major Lazer, Soulwax, Mr. Oizo, The Chemical Brothers, Jamie XX, Muse, Kndrick Lamar sont quelques-uns des artistes à s’être produits durant ce festival de musique en Espagne", latitude: 40.055385, longitude: 0.0641504),
           Festival(titre: "Festival Beauregard ", date: "02/07/2020", lieu: "France, Hérouville Saint Clair", genre: "Pop, Rock", imageName: "beauregard", desc: "Le soleil sera quasiment sûr de briller au dessus de vos têtes ! La programmation du festival est toujours impressionnante. Major Lazer, Soulwax, Mr. Oizo, The Chemical Brothers, Jamie XX, Muse, Kndrick Lamar sont quelques-uns des artistes à s’être produits durant ce festival de musique en Espagne", latitude: 49.2, longitude: 0.3167)
           
           
       ]
    
    
    
    
    var body: some View {
        TabView {
            ActuView()
                        .tabItem {
                            Image(systemName: "lightbulb.fill")
                            Text("First")
                        }
            MapView()
                        .tabItem {
                            Image(systemName: "mappin.and.ellipse")
                            Text("Second")
                        }
                    ProfileView()
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Third")
                        }
            
                }.edgesIgnoringSafeArea(.top)
                .font(.headline)
        
        
            }
        }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
