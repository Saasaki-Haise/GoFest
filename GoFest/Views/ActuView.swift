//
//  ActuView.swift
//  GoFest
//
//  Created by Haise on 28/01/2020.
//  Copyright © 2020 Haise. All rights reserved.
//

import SwiftUI
import MapKit





struct ActuView: View {
    var festivals = [Festival]()
    
    
    
    
    
    
    
    init() {
        
        UITableView.appearance().separatorStyle = .none
    }
    
    
   
    
    var body: some View {
        NavigationView {
            List(festivals) {
                festival in
                
                NavigationLink (destination: DetailFestival(nomFestival: festival.titre, imageFestival: festival.imageName)
                    )
                {
                    
                    FestivalCellView(festival: festival)

                    
                }
                .navigationBarTitle("FESTIVAL", displayMode: .inline)
                    
                    .navigationBarItems(trailing:
                        NavigationLink (destination: FiltreView())
                        { Image(systemName: "plus") })
                
            }
    }
}

struct ActuView_Previews: PreviewProvider {
    static var previews: some View {
        ActuView()
    }
}


struct FestivalCellView: View {
    var festival: Festival
    
    var body: some View {
        ZStack {
            Image(festival.imageName)
            
                
                .resizable()
                .aspectRatio(contentMode: .fit)
                .brightness(-0.3)
                .clipped()
                .border(Color.gray, width: 2)
                .shadow(radius: 0)

            
            VStack(alignment: .leading) {
                
                HStack {
                    Text(festival.titre)
                        .fontWeight(.bold)
                        .shadow(color: Color.white, radius: 3, x: 3, y: 2)
                        .font(.title)
                        
                        .foregroundColor(Color.white)
                        
                        .multilineTextAlignment(.center)
                    Spacer()
                    Text(festival.date)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                }.padding(10)
                
                Spacer()
                HStack {
                    Image(systemName: "map")
                        .foregroundColor(Color.white)
                    Text(festival.lieu)
                        .foregroundColor(Color.white)
                    Spacer()
                    Image(systemName: "star.fill")
                        
                        .foregroundColor(Color.yellow)

                }.padding()
                
                
            }
        }
    }
}
}
