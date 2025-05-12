//
//  MapView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 5/5/25.
//

// This view will dispay the players current location on the map.


import SwiftUI

struct MapView: View {
    @State var mapOveraly = "mapDrm"
    @State var mapText1 = "Select A Location"
//    @State var mapText2 = "1st Floor"
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
//                Text(mapText2)
//                    .font(.system(size: 20))
                
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
                                        case "Commons North" :
                                            mapOveraly = locationImages[1]
                                        case "Commons South" :
                                            mapOveraly = locationImages[2]
                                        case "Dorm Lobby" :
                                            mapOveraly = locationImages[3]
                                        case "Dorms 2nd Floor" :
                                            mapOveraly = locationImages[4]
                                        case "Dorms 3rd Floor" :
                                            mapOveraly = locationImages[5]
                                        case "Dorms 4th Floor" :
                                            mapOveraly = locationImages[6]
                                        case "J Hall":
                                            mapOveraly = locationImages[7]
                                        case "J Hall 2nd Floor":
                                            mapOveraly = locationImages[8]
                                        case "J Hall 3rd Floor":
                                            mapOveraly = locationImages[9]
                        
                                        default:
                                            mapOveraly = locationImages[0]
                    
                    //                        "Commons","Commons North","Commons South", "Dorm Lobby","Dorms 1st Floor","Dorms 2nd Floor","Dorms 3rd Floor", "J Hall", "J Hall 2nd Floor","J Hall 3rd Floor"
                                        }
                    
                    
                }
//                .onChange {
//
//                }
                .background(Color.white)
                
                Spacer()
            }.padding(EdgeInsets(top: 90, leading: 0, bottom: 0, trailing: 120))
        }
        
    }
}

#Preview {
    MapView()
}
