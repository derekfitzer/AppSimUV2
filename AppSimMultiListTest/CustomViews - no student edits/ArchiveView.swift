//
//  ArchiveView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/30/25.
//

import SwiftUI

struct ArchiveView: View {
    
    var colors = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"]
    @State private var pick1 = "0"
    @State private var pick2 = "0"
    @State private var pick3 = "0"
    //    @Binding var isPresented: Bool
    @Environment(\.dismiss) var dismiss
    
    //   @State var currentRandom = randoLocations.randomElement()!
    @State var showArchive = false
    
    
    
    var body: some View {
        
        //        NavigationView{
        ZStack{
            Image("jhallArchive")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
            VStack{
                Text("Welcome to the Archive")
                    .font(.system(size: 32))
                    .foregroundStyle(Color.white)
                    .padding(EdgeInsets(top: 40, leading: 15, bottom: 0, trailing: 15 ))
                    .bold()
                Text("The Archive is availbe to Campus residents. Please enter a location code to access the archive")
                    .font(.system(size: 20))
                    .foregroundStyle(Color.white)
                    .padding(EdgeInsets(top: 20, leading: 15, bottom: 20, trailing: 15 ))
                Text("Warning")
                    .font(.system(size: 28))
                    .bold()
                    .foregroundStyle(Color.white)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 3, trailing: 15 ))
                Text("Archive contents can contain unstable and disruptive data. Proceese with caution!")
                    .font(.system(size: 20))
                    .foregroundStyle(Color.white)
                    .padding(EdgeInsets(top: 2, leading: 15, bottom: 40, trailing: 15 ))
                Spacer()
                Text("Enter Access Code")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundStyle(Color.white)
                    .padding(EdgeInsets(top: 2, leading: 15, bottom: 40, trailing: 15 ))
                
                VStack {
                    HStack{
                        Picker("Please choose a color", selection: $pick1) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }.pickerStyle(.wheel)
                            .background(Color.white)
                        
                        Picker("Please choose a color", selection: $pick2) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }.pickerStyle(.wheel)
                            .background(Color.white)
                        Picker("Please choose a color", selection: $pick3) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }.pickerStyle(.wheel)
                            .background(Color.white)
                        
                    }.background(Color.white)
                    NavigationLink {
                        if pick1 == "4" && pick2 == "0" && pick3 == "4" {
                            View404()
                        } else if pick1 == "9" && pick2 == "A" && pick3 == "3"  {
                            ClaimView(localItem: 490)
                        } else {
                            ArchiveRandoRoom()
                        }
                    } label: {
                        Text("Open Destination")
                            .background(Color.white)
                    }
                    
                    
                    
                    
                    
                    Spacer()
                }
                .onAppear{
                    playLocationSound(sound: "archiveMusic", type: "mp3")
                    
                }
                //.navigationBarBackButtonHidden(true)
                
                
                
            }
        }
    }
}
//}

#Preview {
    ArchiveView()
}


struct archiveRandoRoom{
    var image: String
    var sound: String
    var text: String
}
