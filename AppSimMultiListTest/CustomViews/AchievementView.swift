//
//  AchievementView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/30/25.
//

import SwiftUI

struct AchievementView: View {
    
    @State var achItem: [Item]
  
 
    
        let columns = [GridItem(.fixed(80)), GridItem(.fixed(80)), GridItem(.fixed(80)),  GridItem(.fixed(80))]
        
    var body: some View {
        VStack{
            ScrollView {
                Text("Achivements Unlocked")
                    .bold()
                    .font(.system(size: 30))
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(0..<items.count, id: \.self) { index in
                        if achItem[index].found {
                            Image(items[index].itemImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } else {
                            Image("notFound")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                }
                .padding(.horizontal)
            }
            
            Button("Reload") {
                
                achItem = items
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    AchievementView(achItem: items)
}



