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
    
    @EnvironmentObject var appState: AppState
    
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
               
                appState.pItems[itemLocation].found = true
                playActionSound(sound: "unlock", type: "mp3")
                claimDim = false
                
                
            } label: {
                Text("Claim")
            }.opacity(claimDim ? 1.0 : 0)
        }.onAppear{
//            if let f = searchItems(item: localItem, items: appState.pItems) {
//                let item = appState.pItems[f]
//                image = item.itemImage
//                desc = item.itemDescription
//                name = item.name
//                itemLocation = f
//            } else {
//                name = "Invalid Item"
//            }
            let item = appState.pItems[localItem]
            image = item.itemImage
            desc = item.itemDescription
            name = item.name
            itemLocation = localItem
        }
    }
    
//    func searchItems(item: Int, items: [Item]) -> Int? {
//        return appState.pItems.firstIndex { $0.itemID == item }
//    }
}

// see if involved in con
// if invovled check if all items have been found
// give feedback to user that items were found as part of con.

#Preview {
    ClaimView(localItem: 410)
}
