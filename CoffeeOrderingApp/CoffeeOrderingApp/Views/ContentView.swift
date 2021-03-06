//
//  ContentView.swift
//  CoffeeOrderingApp
//
//  Created by Mika Urakawa on 2021/07/05.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var orderListVM = OrderListViewModel()
    
    @State private var showModal: Bool = false
    
    var body: some View {
        
        NavigationView {
        
        OrderListView(orders: self.orderListVM.orders)
         
            .navigationBarTitle("Coffee Orders")
            .navigationBarItems(leading: Button(action: reloadOrders) {
                Image(systemName: "arrow.clockwise")
                    .foregroundColor(Color.white)
                }, trailing: Button(action: showAddCoffeeOrderView){
                    Image(systemName: "plus")
                        .foregroundColor(Color.white)
            })
          
            
            .sheet(isPresented: self.$showModal) {
                AddCoffeeOrderView(isPresented: self.$showModal)
            }
            
        }
    }
    
    private func reloadOrders() {
        self.orderListVM.fetchOrders()
    }
    
    private func showAddCoffeeOrderView() {
        self.showModal = true
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            
            // ダークモード
            ContentView().colorScheme(.dark)
            
            ContentView().previewDevice("iPhone SE")
            
            // Dynamic Font
            ContentView().previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraExtraLarge)
            
            ContentView().previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraLarge)
            
            ContentView().previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraSmall)
        }
        
        
    }
}
