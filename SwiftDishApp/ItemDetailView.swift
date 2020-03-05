//
//  ItemDetailView.swift
//  SwiftDishApp
//
//  Created by EDUARDO MEJIA on 29/02/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import SwiftUI

struct ItemDetailView: View {
    var item: MenuItem
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image (item.mainImage)
                Text("Photo: \(item.photoCredit)")
                .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(Color.white)
                    .offset(x:-5, y: -5)
            }
            
            Text(item.description)
            .padding()
            Spacer()
        }//VSTACK
            .navigationBarTitle(Text(item.name), displayMode: .inline)//Modifica el titulo
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(item: MenuItem.example)
    }
}
