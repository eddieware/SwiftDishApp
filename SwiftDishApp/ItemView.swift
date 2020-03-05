//
//  ItemView.swift
//  SwiftDishApp
//
//  Created by EDUARDO MEJIA on 29/02/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import SwiftUI

struct ItemView: View {
    var eduardo: MenuItem
    let colors: [String:Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue,
                                  "V": .green]
    
    var body: some View {
        NavigationLink(destination: ItemDetailView(item: eduardo)){
            
            HStack{
                       Image(eduardo.thumbnailImage)
                           .clipShape(Circle())
                           .overlay(Circle().stroke(Color.gray,lineWidth: 2))
                       VStack(alignment: .leading)
                           {
                           Text(eduardo.name)
                               .font(.headline)
                           Text("$\(eduardo.price)")
                           
                       }
                       Spacer() //para distribuir por espacios
                       ForEach (eduardo.restrictions, id:\.self ){restriction in
                           Text(restriction)
                               .font(.caption)
                               .fontWeight(.black)
                               .padding(5)
                               .background(self.colors[restriction, default: .black])
                               .clipShape(Circle())
                               .foregroundColor(.white)
                           
                       }
                           
                   }
                   //HStack
        }
    //.navigationBarTitle(<#T##title: StringProtocol##StringProtocol#>)
     
       
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(eduardo: MenuItem.example) //el example es por la variable estatica de menu.swift
    }
}
