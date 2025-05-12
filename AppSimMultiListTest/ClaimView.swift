//
//  ClaimView.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/9/25.
//

import SwiftUI

struct ClaimView: View {
    @State var localItem: Int
    @State var image = ""
    @State var desc = ""
    @State var name = ""
    @State var itemLocation = 0
    @State var claimDim = true
    
    
    var body: some View {
        VStack{
            Text(name)
                .padding()
                .font(.system(size: 30))
                .bold()
            Text(desc)
                .padding()
                .font(.system(size: 25))
                
            Text("You have claimed this item!")
                .opacity(claimDim ? 0 : 1)
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(claimDim ? 0.2 : 1)
            Button {
               
                items[itemLocation].found = true
                playSoundOneOff(sound: "unlock", type: "mp3")
                claimDim = false
                
            } label: {
                Text("Claim")
            }.opacity(claimDim ? 1.0 : 0)
        }.onAppear{
            if let f = searchItems(item: localItem, items: items) {
                let item = items[f]
                image = item.itemImage
                desc = item.itemDescription
                name = item.name
                itemLocation = f
            } else {
                name = "Invalid Item"
            }
        }
    }
    
    func searchItems(item: Int, items: [Item]) -> Int? {
        return items.firstIndex { $0.itemID == item }
    }
}

#Preview {
    ClaimView(localItem: 410)
}
