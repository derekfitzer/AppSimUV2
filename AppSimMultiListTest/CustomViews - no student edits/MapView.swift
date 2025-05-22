//
//  MapView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 5/5/25.
//

// This view will dispay the players current location on the map.


import SwiftUI



struct MapView: View {
    
    
    @EnvironmentObject var appState: AppState
    
    @State var mapOveraly = "mapDrm"
    @State var mapText1 = "Select A Location"
    
    @State var locations = ["Commons","Commons North","Commons South", "Dorm Lobby","Dorms 2nd Floor","Dorms 3rd Floor","Dorms 4th Floor", "J Hall", "J Hall 2nd Floor","J Hall 3rd Floor"]
    @State var locationImages = ["mapCom","mapComN","mapComS","mapDrm","mapDrm1","mapDrm3","mapDrm4","mapJH","mapJH2","mapJH3"]
    @State var currentLocation = ""
    
    
    var body: some View {
        ZStack{
            Image("mapBG")
                .resizable()
                .aspectRatio(contentMode: .fill)
            Image(mapOveraly)
                .resizable()
                .aspectRatio(contentMode: .fill)
            VStack{
                
                Text(mapText1)
                    .font(.system(size: 30))
                    .bold()
                
                
                Picker("Please choose a color", selection: $mapText1) {
                    ForEach(locations, id: \.self) {
                        Text($0)
                    }
                }
                .contentShape(Capsule())
                .onChange(of: mapText1) {
                    switch mapText1 {
                    case "Commons" :
                        mapOveraly = locationImages[0]
                        updateLocation(whatLoc: 2)
                        
                    case "Commons North" :
                        mapOveraly = locationImages[1]
                        updateLocation(whatLoc: 1000)
                    case "Commons South" :
                        mapOveraly = locationImages[2]
                        updateLocation(whatLoc: 2000)
                    case "Dorm Lobby" :
                        mapOveraly = locationImages[3]
                        updateLocation(whatLoc: 3)
                    case "Dorms 2nd Floor" :
                        mapOveraly = locationImages[4]
                        updateLocation(whatLoc: 3000)
                    case "Dorms 3rd Floor" :
                        mapOveraly = locationImages[5]
                        updateLocation(whatLoc: 4000)
                    case "Dorms 4th Floor" :
                        mapOveraly = locationImages[6]
                        updateLocation(whatLoc: 5000)
                    case "J Hall":
                        mapOveraly = locationImages[7]
                        updateLocation(whatLoc: 1)
                    case "J Hall 2nd Floor":
                        mapOveraly = locationImages[8]
                        updateLocation(whatLoc: 6000)
                    case "J Hall 3rd Floor":
                        mapOveraly = locationImages[9]
                        updateLocation(whatLoc: 7000)
                        
                    default:
                        mapOveraly = locationImages[0]
                        
                        
                    }
                    
                    
                }
                
                .background(Color.white)
                
                Spacer()
            }.padding(EdgeInsets(top: 90, leading: 0, bottom: 0, trailing: 120))
            
            
        }
        
    }
    func updateLocation(whatLoc: Int){
        let x = searchMyLoc(location: whatLoc)
        appState.currentActions = appState.pLocations[x!].actions
        appState.currentITBlock = 0
        appState.currentLocationIndex = x!
    }
    
    func searchMyLoc(location: Int) -> Int? {
        //  return locations.firstIndex(where: $0.mapID == location)
        return appState.pLocations.firstIndex { $0.mapID == location }
    }
}

#Preview {
    MapView()
}
