//
//  ContentView.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/5/25.
//

import SwiftUI

class GlobalCurrentLocation: ObservableObject {
    @Published var locationId = 0
}

struct ContentView: View {
    
    @ObservedObject var loc: GlobalCurrentLocation

    @State var currentITBlock = 0
 // @State var currentLocation = 0
    @State var myLocation: Location = locations[0]
    @State var currentActions: [Action] = [a1]
    @State var bufferActions: [Action] = [a1]
    @State var claimItem = false
    @State var locAlert = false
    @State var viewClaim = true
    @State var currentLocationIndex = 0

    // Add custom views to this array
    // 0 archive view
    // 1 lockedArchiveView
    var views: [AnyView] = [AnyView(ArchiveView()), AnyView(LockView())] as [AnyView]
    var customView: AnyView = AnyView(UIV())
    var body: some View {
       
        NavigationView{
            ScrollView{
                ZStack{
                    // background image
                    

                    
                   Color.black
                    
                        
                    VStack{
//                        Button {
//                            loc.locationId = 100
//                        } label: {
//                            Text("update")
//                        }

                        // display location title
                        Text(myLocation.locationName)
                            .padding(EdgeInsets(top: 125, leading: 0, bottom: 0, trailing: 0))
                            .font(.system(size: 40))
                            .foregroundStyle(Color.white)
                        
                        // it blocks
                        
                        Image(myLocation.blocks[currentITBlock].image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350, height: 350)
                            .padding()
                            
                            
                        Text(myLocation.blocks[currentITBlock].text)
                            .padding()
                            .foregroundStyle(Color.white)
                            
                        
                        // custom actions by block area
                        
                        List{
                            ForEach(currentActions, id: \.self) { i in
                                
                                switch i.type {
                                case .loadGlobalView:
                                    NavigationLink {
                                        views[i.goLocation]
                                    } label: {
                                        Text(i.text)
                                            .accentColor(.black)
                                    }
                                case .loadCustomView:
                                    NavigationLink {
                                        customView
                                    } label: {
                                        Text(i.text)
                                            .accentColor(.black)
                                    }
                                case .loadLocation:
                                    Button {
                                        if let a = seachLoc(location: i.goLocation, locations: locations) {
                                            
                                            myLocation = locations[a]
                                            loc.locationId = a
                                            currentLocationIndex = a
                                            
                                            currentActions = myLocation.actions
                                           
                                            playLocalLocationSound()
                                            
                                            // PROBLEM HERE! Still Not Fixed
                                            
                                            // have to reset the itblock number before going to a new location
                                            if currentITBlock >= locations[a].blocks.count {
                                                currentITBlock = 0
                                            }
                                            
                                            if locations[a].blocks[currentITBlock].actions.isEmpty {
//                                                locAlert = true
                                            } else {
                                                for i in locations[a].blocks[currentITBlock].actions {
                                                    
                                                    currentActions.insert(i, at: 0)
                                                    
                                                
                                                }
//                                                locAlert = true
                                            }
                                        } else {
                                            locAlert = true
                                        }
                                    } label: {
                                        Text(i.text)
                                            .accentColor(.black)
//                                            .foregroundStyle(Color.green)
                                    }.alert(isPresented: $locAlert) {
                                        Alert(title: Text("Location Error"), message: Text(String(msg404.randomElement() ?? ":-)")), dismissButton: .default(Text("Continue")))
                                    }
                                case .claim:
                                    if let a = searchItems(item: i.goLocation, items: items) {
//                                        if items[a].found == false {
                                            NavigationLink {
                                                ClaimView(localItem: i.goLocation)
                                            } label: {
                                                Text("Claim \(items[a].itemDescription)")
                                            }
//                                        }
                                    }
//
                                case .next:
                                    
                                    Button {
                                        
                                        if currentITBlock < myLocation.blocks.count - 1 {
                                            currentITBlock += 1
                                            // rebuild actions
                                            currentActions = myLocation.actions
                                            for i in myLocation.blocks[currentITBlock].actions {
                                                currentActions.insert(i, at: 0)
                                            }

                                            playLocalActionSound()
                                         
                                        } else {
                                            currentITBlock = 0
                                        }
                                        
                                    } label: {
                                        Text(i.text)
                                            .accentColor(.black)
//                                            .foregroundStyle(Color.orange)
                                    }
                                    
                                }
                            }
                        }
                        .frame(width: 400, height: 400, alignment: .center)
                        .scrollContentBackground(.hidden)
                        Text("The Campus")
                      //  .scrollDisabled(true)

                        
//                        .refreshable {
//                                   await fetchData()
//                               }
                    }
                    
                           }
                }// z closes
                
            } // nav closes
        .frame(maxWidth: .infinity, maxHeight: .infinity)
               .background {
                   Color.black.opacity(1)
                       .ignoresSafeArea()
            .onAppear{
                // add current actions to actions list
                currentActions = locations[currentLocationIndex].actions
                for i in locations[currentLocationIndex].blocks[currentITBlock].actions {
                    currentActions.insert(i, at: 0)
                }
                playLocationSound(sound: "silence", type: "mp3")
                
            }
            
        } // body closes
        
    }
    
    func updateActions(){
        currentActions = locations[0].actions
        for i in locations[0].blocks[currentITBlock].actions {
            currentActions.insert(i, at: 0)
        }
    }

    
    func seachLoc(location: Int, locations: [Location]) -> Int? {
        //  return locations.firstIndex(where: $0.mapID == location)
        return locations.firstIndex { $0.mapID == location }
    }
    
    
    func searchItems(item: Int, items: [Item]) -> Int? {
        return items.firstIndex { $0.itemID == item }
    }
    
    func playLocalActionSound(){
        if myLocation.blocks[currentITBlock].sound  != nil {
            playActionSound(sound: myLocation.blocks[currentITBlock].sound ?? "", type: "mp3")
    }
    }
    func playLocalLocationSound(){
        if myLocation.sound  != nil {
            playLocationSound(sound: myLocation.sound ?? "", type: "mp3")
    }
    }
    
//    func removeClaim()  {
//// just pulling 0 for now!
//        currentActions.remove(at: 0)
//    }

} // content closes

#Preview {
    ContentView(loc: GlobalCurrentLocation())
}


func submit(){
    print("test")
}
