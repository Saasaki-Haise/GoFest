//
//  goFestView.swift
//  festivaPage
//
//  Created by saad  on 29/01/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import SwiftUI
//var color: Color

struct Fest: Identifiable {
    
    var id = UUID()
    var icon: String
    var name: String
    var lieu: String
    var image: String
    var comment: String
}

struct GoFestView: View {
    var fest: Fest
    var body: some View {
        
    NavigationView{
    ScrollView(.vertical) {
            ZStack{
               Color.black
              .edgesIgnoringSafeArea(.all)

            VStack(alignment: .leading, spacing: 10){
                // 1.
                HStack {
                    

                    NavigationLink(destination: Valider()){
                        
                        Text("")
                            .navigationBarTitle("GoFest", displayMode: .inline)
                            .navigationBarItems(leading: Image (systemName: "chevron.left"), trailing: Text("Participez"))
                        
                        
                    }
                    
                    
                    
                }.padding()

                Spacer()
                
                // 2.
                Image("italy-umbria-jazz")
                        .resizable()
                        .frame(width: 380, height: 220)
                        .padding()
                // 3.
                ScrollView(.horizontal) {
                                        HStack(spacing: 10){
                                        ForEach(GoFestsView.fests) { fest in
                                                Image("Image \(fest.icon)")
                                                .resizable()
                                                .frame(width: 85, height: 85).clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 2))
                                        
                                            }.padding(5)
                                            }
                                        }
                    // 4.
                    Webview(url:"https://youtu.be/huo56efW0VM")
                        .frame(width: 350, height: 250)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal, 30.0)
                
      
                // 5.
                Text(fest.name)
                    .font(.headline)
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.center)
                    .padding(46.0)
                    .offset(x: 0, y: -35)
                    
                  
                // 6.
                Text(fest.comment)
                    .fontWeight(.medium)
                    .colorInvert()              .multilineTextAlignment(.leading)
                    .padding(.horizontal, 55.0)
                    .frame(width: 400, height: 1000)
                    .offset(y: -50)
                    .font(.headline)
                    
                
            
                
                    }.padding()
            }.edgesIgnoringSafeArea(.all)
            

        
            }
        }

    }
}
struct GoFestView_Previews: PreviewProvider {
    static var previews: some View {
        
        //goFestView()
        GoFestView(fest: Fest(icon: "ZAZ", name: "Umbria Jazz", lieu: "Italy, Rome", image: "italy-umbria-jazz", comment: "Histoire du festival.La première édition de ce festival gratuit a lieu en 1973 (Sun Ra, Weather Report, Count Basie), et son succès immédiat fait affluer un public très nombreux dans les paisibles villages concernés. Les rues sont prises d'assaut par les visiteurs, qui y installent leurs sacs de couchage, bloquant parfois l'accès des musiciens à la scène. Ce succès est diversement apprécié par les habitants.l'édition de 1976 (George Coleman, Art Blakey, Dizzy Gillespie) voit les organisateurs débordés par le nombre de spectateurs, et attire au-delà du festival un rassemblement politisé, l'Italie se trouvant à l'époque au cœur de ses années de plomb. De petits groupes de manifestants profitent de l'évènement, des émeutes éclatent à Todi, la police vient en nombre, créant un climat tendu à la place de l'ambiance festive du festival. Stan Getz et Chet Baker sont hués.L'opposition d'idées entre les milieux politiques et artistiques est alors d'une telle force que les organisateurs décident d'annuler l'édition 1977 de l'Umbria Jazz.Après de multiples controverses, le festival revient en 1978 dans une formule qui tente en vain de limiter l'afflux des spectateurs, en instaurant deux concerts simultanés chaque soir dans des villes différentes. Le festival devient ingérable, et les administrateurs sont contraints d'abandonner : c'est la dernière édition du festival.En 1982, le festival est relancé avec de nombreux changements : les collectivités territoriales et le comité du tourisme ne s'occupent plus de la gestion. Celle-ci est sous la responsabilité de l'ARCI (Associazione Ricreativa e Culturale Italiana, l'Association italienne de loisirs et de culture), très présente dans la région. Elle crée en 1985 l'Association à but non lucratif Umbria Jazz, qui gère la marque Umbria Jazz, propriété de la Région, et qui s'occupe de la programmation, de la régie des spectacles, de l'organisation logistique du festival, et de la recherche de partenaires financiers. Le Président de l'Association est actuellement Renzo Arbore, et Carlo Pagnotta, l'un des fondateurs du festival, en est le Directeur artistique.La renaissance du festival en 1982 se concentre uniquement à Pérouse, sous un chapiteau à l'extérieur de la ville, les problèmes des années 1970 étant encore présents dans les mémoires.Quelques années plus tard est créée à l'initiative de la Région la Fondation Umbria Jazz, qui doit assurer les ressources financières du festival. Pour la première fois, les concerts importants deviennent payants.  "))
    }
}


/* HStack(spacing: 10){
                                       ForEach(GoFestsView.fests) { fest in
                                               Image("Image \(fest.icon)")
                                               .resizable()
                                               .frame(width: 85, height: 85).clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 2))
                                       
                                           }.padding(5)
                                           }
                                       }*/
