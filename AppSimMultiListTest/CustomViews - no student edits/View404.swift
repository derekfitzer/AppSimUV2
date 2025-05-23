//
//  View404.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/13/25.
//

import SwiftUI

struct View404: View {
    var body: some View {
        Text("Welcome to the 404 view!")
        
        NavigationLink {
            ClaimView(localItem: 404)
        } label: {
            Text("Claim the 404 Code!")
        }

    }
}

#Preview {
    View404()
}
