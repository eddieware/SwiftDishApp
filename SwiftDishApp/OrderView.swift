//
//  OrderView.swift
//  SwiftDishApp
//
//  Created by EDUARDO MEJIA on 07/03/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationView{
        List{
           Section{
                          ForEach(order.items){item in
                              HStack{
                                  Text(item.name)
                                  Spacer()
                                  Text("$\(item.price)")
                                  
                              }//fin HSTACK
                          }.onDelete(perform: deleteItems)//
                      }//fin section 1
            Section{
                NavigationLink(destination: CheckoutView()){
                    Text("Place Holder")
                }
            }.disabled(order.items.isEmpty)//fin section 2
        }.navigationBarTitle("Order")
        .listStyle(GroupedListStyle())
             .navigationBarItems(trailing: EditButton())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static let order = Order()//Instancia fija
    static var previews: some View {
           
        OrderView().environmentObject(order)
    }
}
