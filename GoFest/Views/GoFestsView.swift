//
//  goFestsView.swift
//  festivaPage
//
//  Created by saad  on 29/01/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import SwiftUI

struct GoFestsView: View {
   
     static let artists = [
        artist(imageName: "JOSHUA REDMAN"), artist(imageName: "STEFANO BOLLANI"), artist(imageName: "veronica_swift"), artist(imageName: "WYNTON MARSALIS")
    ]

            static let fests = [
                
                
                Fest(icon: "ZAZ", name: "Umbria Jazz", lieu: "Italy, Rome", image: "italy-umbria-jazz", comment: "Histoire du festival.La première édition de ce festival gratuit a lieu en 1973 (Sun Ra, Weather Report, Count Basie), et son succès immédiat fait affluer un public très nombreux dans les paisibles villages concernés. Les rues sont prises d'assaut par les visiteurs, qui y installent leurs sacs de couchage, bloquant parfois l'accès des musiciens à la scène. Ce succès est diversement apprécié par les habitants.l'édition de 1976 (George Coleman, Art Blakey, Dizzy Gillespie) voit les organisateurs débordés par le nombre de spectateurs, et attire au-delà du festival un rassemblement politisé, l'Italie se trouvant à l'époque au cœur de ses années de plomb. De petits groupes de manifestants profitent de l'évènement, des émeutes éclatent à Todi, la police vient en nombre, créant un climat tendu à la place de l'ambiance festive du festival. Stan Getz et Chet Baker sont hués.L'opposition d'idées entre les milieux politiques et artistiques est alors d'une telle force que les organisateurs décident d'annuler l'édition 1977 de l'Umbria Jazz.Après de multiples controverses, le festival revient en 1978 dans une formule qui tente en vain de limiter l'afflux des spectateurs, en instaurant deux concerts simultanés chaque soir dans des villes différentes. Le festival devient ingérable, et les administrateurs sont contraints d'abandonner : c'est la dernière édition du festival.En 1982, le festival est relancé avec de nombreux changements : les collectivités territoriales et le comité du tourisme ne s'occupent plus de la gestion. Celle-ci est sous la responsabilité de l'ARCI (Associazione Ricreativa e Culturale Italiana, l'Association italienne de loisirs et de culture), très présente dans la région. Elle crée en 1985 l'Association à but non lucratif Umbria Jazz, qui gère la marque Umbria Jazz, propriété de la Région, et qui s'occupe de la programmation, de la régie des spectacles, de l'organisation logistique du festival, et de la recherche de partenaires financiers. Le Président de l'Association est actuellement Renzo Arbore, et Carlo Pagnotta, l'un des fondateurs du festival, en est le Directeur artistique.La renaissance du festival en 1982 se concentre uniquement à Pérouse, sous un chapiteau à l'extérieur de la ville, les problèmes des années 1970 étant encore présents dans les mémoires.Quelques années plus tard est créée à l'initiative de la Région la Fondation Umbria Jazz, qui doit assurer les ressources financières du festival. Pour la première fois, les concerts importants deviennent payants.  "),
                
                Fest(icon: "Adele", name: "Hello", lieu: "Paris", image: "adele-hello", comment: "Watch Adele Give Powerful Hello Performance at France's NRJ Awards. Adele performs Hello for the first time on BBC Music. Just days after her live debut of Hello, Adele gave another chill-inducing delivery of her new hit single at the NRJ Awards in Cannes, France, on Saturday Nov. 7  "),
  
                
                 Fest(icon: "Ed-Sheeran", name: "Variété pop internationale", lieu: "Paris", image: "ed-sheeran-concert", comment: "La megastar mondiale Ed Sheeran annonce aujourd'hui une série de concerts et de festivals en 2019, qui fera suite à sa tournée des stades en Afrique du Sud en mars 2019 (qui affiche déjà complet) "),
                 
                  Fest(icon: "pink", name: "PINK LIVE AT LA DÉFENSE ARENA", lieu: "Paris", image: "pink-concert", comment: "To rediscover P!nk live, meet on July 2019 at Paris La Défense Arena.Please note tickets go on sale this October 24, 2018 at 10 a.m. (Paris time) but a presale is held on Friday October 19, 2018 at 8 a.m. on Carrefour Spectacle, link below the article.")
                  

                


            ]
    
    
        var body: some View {
        
            
            NavigationView{
                

                    
                List(GoFestsView.fests){ fest in
                         
                        NavigationLink(destination: GoFestView(fest: fest)){
                            HStack {
                        GoFestView(fest: fest)
                            Image(fest.icon)
                                .resizable()
                                .clipShape(Circle())
                            
                            Text(fest.lieu)
                        }
                        
                    }.padding(-20)
                        .navigationBarTitle(Text("Liste des Festivals"), displayMode: .inline)
                }
                }
            }
    
}
struct GoFestsView_Previews: PreviewProvider {
    static var previews: some View {
        GoFestsView()
    }
}
