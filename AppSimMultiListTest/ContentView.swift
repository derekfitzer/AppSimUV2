//
//  ContentView.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/5/25.
//

import SwiftUI

// DO NOT MODIFY THE CONTENT VIEW!

//class GlobalCurrentLocation: ObservableObject {
//    @Published var locationId = 0
//}

struct ContentView: View {
    
    @EnvironmentObject var appState: AppState
    

    @State var claimItem = false
   
    @State var viewClaim = true
    
    
    // Add custom views to this array
    // 0 archive view
    // 1 lockedArchiveView
//    var views: [AnyView] = [AnyView(ArchiveView()), AnyView(LockView()), AnyView(CommissaryView(gold: player1.cash))] as [AnyView]
    
    
    var customView: AnyView = AnyView(UIV())
    var body: some View {
        //        @State var myLocation: Location = appState.pLocations[0]
        NavigationView{
            ScrollView{
                ZStack{
                    
                    Color.black
                    
                    VStack{
                        ContentHeader()
                        ContentList()
                        
                        

                    }
                }// z closes
            
            } // nav closes
            
     //            playLocationSound(sound: "silence", type: "mp3")
            
        } // nav closes
        

        
    } // body closes
    

    


    
}

#Preview {
    ContentView()
        .environmentObject(AppState())
}


func submit(){
    print("test")
}
