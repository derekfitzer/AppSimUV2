//
//  Comments.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/19/25.
//

import Foundation


// custom actions by block area

//                        List{
//                            ForEach(currentActions, id: \.self) { i in
//
//                                switch i.type {
//                                case .loadGlobalView:
//                                    NavigationLink {
//                                        views[i.goLocation]
//                                    } label: {
//                                        Text(i.text)
//                                            .accentColor(.black)
//                                    }
//                                case .loadCustomView:
//                                    NavigationLink {
//                                        customView
//                                    } label: {
//                                        Text(i.text)
//                                            .accentColor(.black)
//                                    }
//                                case .loadLocation:
//                                    Button {
//                                        if let a = seachLoc(location: i.goLocation, locations: appState.pLocations) {
//                                            appState.pLocations[a].visited = true
//                                            appState.pCurrentLocation = appState.pLocations[a]
//                                            loc.locationId = a
//                                            currentLocationIndex = a
//
//                                            currentActions = appState.pLocations[appState.pCurrentLocation].actions
//
////                                            playLocalLocationSound()
//
//                                            // PROBLEM HERE! Still Not Fixed
//
//                                            // have to reset the itblock number before going to a new location
//                                            if currentITBlock >= appState.pLocations[a].blocks.count {
//                                                currentITBlock = 0
//                                            }
//
//                                            if appState.pLocations[a].blocks[currentITBlock].actions.isEmpty {
////                                                locAlert = true
//                                            } else {
//                                                for i in appState.pLocations[a].blocks[currentITBlock].actions {
//
//                                                    currentActions.insert(i, at: 0)
//
//
//                                                }
////                                                locAlert = true
//                                            }
//                                        } else {
//                                            locAlert = true
//                                        }
//                                    } label: {
//                                        Text(i.text)
//                                            .accentColor(.black)
////                                            .foregroundStyle(Color.green)
//                                    }.alert(isPresented: $locAlert) {
//                                        Alert(title: Text("Location Error"), message: Text(String(msg404.randomElement() ?? ":-)")), dismissButton: .default(Text("Continue")))
//                                    }
//                                case .claim:
//                                    Text("This")
////                                    if let a = searchItems(item: i.goLocation, items: appState.pItems) {
//////                                        if items[a].found == false {
////                                            NavigationLink {
////                                                ClaimView(localItem: i.goLocation)
////                                            } label: {
////                                                Text("Claim \(appState.pItems[a].name)")
////                                            }
//////                                        }
////                                    }
////
//                                case .next:
//
//                                    Text("This")
//
////                                    Button {
//
////                                        if currentITBlock < appState.pLocations[appState.pCurrentLocation].blocks.count - 1 {
////                                            currentITBlock += 1
////                                            // rebuild actions
////                                            currentActions = appState.pLocations[appState.pCurrentLocation].actions
////                                            let x = appState.pLocations[appState.pCurrentLocation].blocks[currentITBlock].actions
////                                            for i in x /*myLocation.blocks[currentITBlock].actions */
////                                            {
////                                                currentActions.insert(i, at: 0)
////                                            }
////
//////                                            playLocalActionSound()
////
////                                        } else {
////                                            currentITBlock = 0
////                                        }
////
////                                    } label: {
////                                        Text(i.text)
////                                            .accentColor(.black)
//////                                            .foregroundStyle(Color.orange)
////                                    }
//
//                                }
//                            }
//                        }
//                        .frame(width: 400, height: 400, alignment: .center)
//                        .scrollContentBackground(.hidden)
//                        Text("The Campus")
//                      //  .scrollDisabled(true)
//
//
////                        .refreshable {
////                                   await fetchData()
////                               }


//                       .ignoresSafeArea()
//            .onAppear{
//                // add current actions to actions list
//                currentActions = appState.pLocations[currentLocationIndex].actions
//                for i in appState.pLocations[currentLocationIndex].blocks[currentITBlock].actions {
//                    currentActions.insert(i, at: 0)
//                }
//         






//    func updateActions(){
//        currentActions = appState.pLocations[0].actions
//        for i in appState.pLocations[0].blocks[currentITBlock].actions {
//            currentActions.insert(i, at: 0)
//        }
//    }
//
//



//    func searchItems(item: Int, items: [Item]) -> Int? {
//        return items.firstIndex { $0.itemID == item }
//    }

//    func playLocalActionSound(){
//        if myLocation.blocks[currentITBlock].sound  != nil {
//            playActionSound(sound: myLocation.blocks[currentITBlock].sound ?? "", type: "mp3")
//    }
//    }
//    func playLocalLocationSound(){
//        if myLocation.sound  != nil {
//            playLocationSound(sound: myLocation.sound ?? "", type: "mp3")
//    }
//    }

//    func removeClaim()  {
//// just pulling 0 for now!
//        currentActions.remove(at: 0)
//    }
