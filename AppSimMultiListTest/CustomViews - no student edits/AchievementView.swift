//
//  AchievementView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/30/25.
//

import SwiftUI


extension Array where Element: Hashable {
    func difference(from other: [Element]) -> [Element] {
        let thisSet = Set(self)
        let otherSet = Set(other)
        return Array(thisSet.symmetricDifference(otherSet))
    }
}

struct AchievementView: View {
    
    @EnvironmentObject var appState: AppState
    
    @State var visitedLoc = 0
    @State var showFoundItemAlert = false
    @State var showMysteryItemAlert = false
    @State var itemIndex = 0
    @State var itemDescription = ""
    @State var itemName = ""
    @State var found = false
    
    
    
    let columns = [GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100)),  GridItem(.fixed(100))]
    
    var body: some View {
        VStack{
            ScrollView {
                Text("Achivements Unlocked")
                    .bold()
                    .font(.system(size: 30))
                Text("You have visited \(appState.foundLocations) of \(String(appState.pLocations.count)) locations")
                    .font(.system(size: 11))
                Text("You have revealed 0 of \(conspracies.count) Conspiracies in the Campus")
                    .font(.system(size: 11))
                Text("You have found \(findItemCount()) of \(appState.pItems.count) items.")
                    .font(.system(size: 11))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                LazyVGrid(columns: columns, spacing: 2) {
                    ForEach(0..<appState.pItems.count, id: \.self) { index in
                        
                        if appState.pItems[index].found {
                            
                            Image(appState.pItems[index].itemImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .onTapGesture {
                                    itemDescription = appState.pItems[index].itemDescription
                                    itemName = appState.pItems[index].name
                                    showMysteryItemAlert = true
                                }
                        } else {
                            
                            Image(appState.pItems[index].itemImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .opacity(0.2)
                                .onTapGesture {
                                    
                                    itemDescription = appState.pItems[index].name
                                    itemName = "Missing Achievement"
                                    showMysteryItemAlert = true
                                    
                                }
                        }
                        //
                        
                    }
                    .padding(.horizontal)
                    .alert(isPresented: $showFoundItemAlert) {
                        Alert(title: Text(itemName), message: Text(itemDescription), dismissButton: .default(Text("OK")))
                    }
                }
                
                .alert(isPresented: $showMysteryItemAlert) {
                    Alert(title: Text(itemName), message: Text(itemDescription), dismissButton: .default(Text("OK")))
                }
            }
        }
    }
    func checkVisited(){
        var count = 0
        for v in appState.pLocations {
            if v.visited {
                count += 1
            }
        }
        player1.visitedLocations = count
        visitedLoc = player1.visitedLocations
        print(count)
    }
    // func here
    func findItemCount() -> Int{
        var c = 0
        for i in appState.pItems {
            if i.found {
                c += 1
            }
        }
        return c
    }
    
    func checkConspiracy(whatCon: Conspiracy) {
        var y: [Int] = []
        for m in appState.pItems {
            if m.found == true {
                y.append(m.itemID)
            }
        }
        y.sort()
        var x = whatCon.requiredItemIDs
        x.sort()
        
        let difference = y.difference(from: x)
        if difference.isEmpty {
            if whatCon.claimed == false {
                if let i = searchItems(item: whatCon.itemID) {
                    appState.pItems[i].found = true
                    playActionSound(sound: "fdfTada", type: "mp3")
                } else {
                    print("nope")
                }
            }
        } else {
            
        }
    }
    func searchItems(item: Int) -> Int? {
        return appState.pItems.firstIndex {$0.itemID == item}
    }
    
    func updateVisitedLocations(){
        appState.foundLocations = 0
        for x in appState.pLocations {
            if x.visited {
                appState.foundLocations += 1
            }
        }
    }
    
}


#Preview {
    AchievementView()
        .environmentObject(AppState())
}



