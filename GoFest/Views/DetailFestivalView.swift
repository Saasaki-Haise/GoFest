//
//  goFestView.swift
//  festivaPage
//
//  Created by saad  on 29/01/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import SwiftUI

struct DetailFestivalView: View {
    
    var nomFestival = String()
    var imageFestival = String()
    
    
    var body: some View {
        ScrollView{
            VStack {
                Text(nomFestival)
                    .font(.largeTitle)
                Image(imageFestival)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Artist")
                    .font(.title)
                ScrollView(.horizontal) {
                    HStack {
                        BulleArtist(artist: "pink")
                        BulleArtist(artist: "pink")
                        BulleArtist(artist: "pink")
                        BulleArtist(artist: "ZAZ")
                    }
                    
                }
                Text("Je Participe")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(10)
                    .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                
                VStack {
                    Spacer()
                    Text("Description")
                        .font(.title)
                    Spacer()
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                }
                .frame(height: 400.0)
                
            }
        }
        
    }
}
struct DetailFestivalView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        DetailFestivalView()
        
    }
}


