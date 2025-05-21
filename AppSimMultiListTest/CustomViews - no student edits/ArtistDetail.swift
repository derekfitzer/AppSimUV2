//
//  ArtistDetail.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 5/2/25.
//

import SwiftUI

struct ArtistDetail: View {
    @State var myResume: resume
    
    @State var imageIndex = 0
    //    workExperience: [String]
    //    var affiliations: [String]
    //    var honorAward: [String]
    
    var body: some View {
        let objective = myResume.objective
        let skills = myResume.skills
        let exp = myResume.workExperience
        
        VStack{
            Text(myResume.name)
                .font(.system(size: 30))
                .bold()
            List{
                Image(myResume.portfolioImageNames[imageIndex])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Button {
                    if imageIndex < myResume.portfolioImageNames.count - 1 {
                        imageIndex += 1
                    } else {
                        imageIndex = 0
                    }
                } label: {
                    Text("Next Image")
                }

                Section(header: Text("Objective").bold()) {
                    Text(objective)
                }
                Section(header: Text("Skills").bold()) {
                    ForEach(skills, id: \.self) { skill in
                        Text(skill)
                    }
                }
                Section(header: Text("Work Experience").bold()) {
                    ForEach(exp, id: \.self) { ex in
                        Text(ex)
                    }
                }
                            Section(header: Text("Honors and Awards").bold()) {
                                ForEach(myResume.honorAward, id: \.self) { aw in
                                    Text(aw)
                                }
                            }
                            
                            
                        }
                        
                    
                        
                        
                    
                
            
        }
        
    }
}

#Preview {
    ArtistDetail(myResume: fdfRes)
}
