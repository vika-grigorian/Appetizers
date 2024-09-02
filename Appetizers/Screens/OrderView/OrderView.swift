//
//  OrderView.swift
//  Appetizers
//
//  Created by Vika on 08.05.24.
//

import SwiftUI

struct OrderView: View {
    
//    @State private var orderItems = MockData.orderItems - удаляем для подключения реальных данных
    @EnvironmentObject var order: Order
    
    var body: some View {
        
            NavigationView {
                ZStack {
                    VStack {
                        List {
                            ForEach(order.items) { appetizer in
                                AppetizerListCell(appetizer: appetizer)
                            }
    //                        .onDelete(perform: { indexSet in
    //                            orderItems.remove(atOffsets: indexSet)
                            .onDelete(perform: order.deleteItems)
                        }
                        .listStyle(PlainListStyle()) // дизайн списка
                        
                        Button {
                        } label: {
                            APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order") //создали переменную в Model.Order totalPrice, которая подсчитывает сумму добавленных товаров в корзину 
                        }
                        .padding(.bottom, 25)
                    }
                    if order.items.isEmpty {
                        EmptyState(imageName: "empty-order", message: "You have no items in your order. \nPlease add an appetizer!")
                    }
                }
                .navigationTitle("🧾 Orders")
            }
    }
}

#Preview {
    OrderView()
}
