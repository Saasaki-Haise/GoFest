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
    //var artist: [artist]
    //var artistName: String
   
   
    
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
                
                Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("")) {
                    Text("Détails").tag(1)
                    Text("En savoir plus").tag(2)
                }.pickerStyle(SegmentedPickerStyle())

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
                    ForEach(GoFestsView.fests) { Fest in
                        Image(Fest.icon)
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
        GoFestView(fest: Fest(icon: "ZAZ", name: "Umbria Jazz", lieu: "Italy, Rome", image: "italy-umbria-jazz", comment: "Histoire du festival.La première édition de ce festival gratuit a lieu en 1973 (Sun Ra, Weather Report, Count Basie), et son succès immédiat fait affluer un public très nombreux dans les paisibles villages concernés. Les rues sont prises d'assaut par les visiteurs, qui y installent leurs sacs de couch "))
  
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
