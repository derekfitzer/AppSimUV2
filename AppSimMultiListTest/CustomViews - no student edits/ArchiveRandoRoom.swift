//
//  RandoRoom.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/30/25.
//

import SwiftUI

struct ArchiveRandoRoom: View {
  //  @State var room: archiveRandoRoom
    
        var body: some View {
        VStack{
            Image(archiveRando.randomElement()!)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .foregroundStyle(Color.white)
            
            
        }.onAppear{
            let ws = archiveRandoSound.randomElement()
            playLocationSound(sound: ws!, type: "mp3")
            
            
        }
        
    }
}


