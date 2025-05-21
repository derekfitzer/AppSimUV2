//
//  ContentList.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/19/25.
//

import SwiftUI

struct ContentList: View {
    
    @EnvironmentObject var appState: AppState
    @State var locAlert = false
    
var views: [AnyView] = [AnyView(ArchiveView()), AnyView(LockView()), AnyView(CommissaryView(gold: player1.cash))] as [AnyView]
    
    var body: some View {
        List{
            
            ForEach(appState.currentActions, id: \.self) { item in
                switch item.type {
                case .next:
                    
                    Button {
                        //    print("should load next")
                        let cb = appState.pLocations[appState.currentLocationIndex].blocks.count - 1
                        if appState.currentITBlock < cb {
                            appState.currentITBlock += 1
                            // rebuild actions
                            let ca = appState.pLocations[appState.currentLocationIndex].actions
                            appState.currentActions = ca
                            let  x = appState.pLocations[appState.currentLocationIndex].blocks
                            if x.isEmpty == false {
                                appState.currentActions.append(contentsOf: appState.pLocations[appState.currentLocationIndex].blocks[appState.currentITBlock].actions)
                            }
                            
                            
                        } else {
                            appState.currentITBlock = 0
                        }
                    } label: {
                        Text("Next")
                    }
                    
                    //
                    
                case .loadLocation:
                    
                    Button{
                        let a = searchMyLoc(location: item.goLocation)
                        if a != nil {
                            appState.pLocations[a!].visited = true
                            appState.currentActions = appState.pLocations[a!].actions
                            appState.currentITBlock = 0
                            appState.currentLocationIndex = a!
                        } else {
                            locAlert = true
                        }
                    } label: {
                        
                        Text("\(item.text)")
                        
                    }
                    
                    
                case .loadCustomView:
                    
                    

                    NavigationLink {
                        views[0]
                    } label: {
                        Text("Sample Load View")
                    }

                    
                    
                    
                case .loadGlobalView:
                    Text("load global view")
                    
                case .claim:
                    
                    
                                        if let x = searchItems(item: item.goLocation){
                                            if appState.pItems[x].found == false {
                                                NavigationLink {
                                                    ClaimView(localItem: x)
                                                } label: {
                                                    Text("\(item.text)")
                                                }
                                        }
                    
                                    }
                
                }
                    
            
            }

            
        } // cl
                    .scrollDisabled(true)
                        .frame(width: 400, height: 400, alignment: .center)
    } // cb
    func searchMyLoc(location: Int) -> Int? {
        //  return locations.firstIndex(where: $0.mapID == location)
        return appState.pLocations.firstIndex { $0.mapID == location }
}
    
    func searchItems(item: Int) -> Int? {
        //  return locations.firstIndex(where: $0.mapID == location)
        return appState.pItems.firstIndex { $0.itemID == item }
}
    
    func searchCustomLocations(item: Int) -> Int? {
        //  return locations.firstIndex(where: $0.mapID == location)
        return appState.customLocations.firstIndex { $0.goLocation == item }
}

    
} // cv

#Preview {
    ContentList()
}
