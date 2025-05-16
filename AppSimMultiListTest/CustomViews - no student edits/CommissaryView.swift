//
//  SwiftUIView.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/16/25.
//

import SwiftUI

struct CommissaryView: View {
    @State var gold: Int
    var body: some View {
        ZStack{
            Color.black
            VStack{
                Text("Campus Commissary")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 40))
                Text("You have \(gold) coins in your wallet")
                    .foregroundStyle(Color.white)
                
                Text("Take a look at the items we have for sale")
                    .foregroundStyle(Color.white)
                List{
                    ForEach(purchases, id: \.self) { item in
                        HStack{
                            Image(item.itemImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100, alignment: .center)
                            Spacer()
                            Text(item.itemName)
                            Text(String(item.itemCost))
                            Button {
                                
                            } label: {
                                Text("Purchase")
                            }

                        }
                        
                    }
                    
                    }
                }.scrollContentBackground(.hidden)
                    
            }
        }
        
}

#Preview {
    CommissaryView(gold: 0)
}
