//
//  ContentHeader.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/19/25.
//

import SwiftUI

struct ContentHeader: View {
    
    @EnvironmentObject var appState: AppState
    var body: some View {
        
        VStack{
            
            // display location title
            
            Text(appState.pLocations[appState.currentLocationIndex].locationName)
                .padding(EdgeInsets(top: 125, leading: 0, bottom: 0, trailing: 0))
                .font(.system(size: 40))
                .foregroundStyle(Color.white)
            
            // display block
            Image(appState.pLocations[appState.currentLocationIndex].blocks[appState.currentITBlock].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 350)
                .padding()
            
            
            Text(appState.pLocations[appState.currentLocationIndex].blocks[appState.currentITBlock].text)
                .padding()
                .foregroundStyle(Color.white)
            
        }
    }
}

#Preview {
    ContentHeader()
}
