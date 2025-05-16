////
////  TabSelect2.swift
////  AppSimMultiListTest
////
////  Created by Derek Fitzer on 5/16/25.
////
//
//import SwiftUI
//
//struct TabSelect2: View {
//    @State var selectedTab = "Home"
//    var body: some View {
//        enum Tab {
//            case Home, Ranking, Post, Menu, Inbox
//            
//        }
//        
//        
//        
//        ZStack {
//            switch selectedTab {
//            case Home:
//                TimeLineView(model: model, isMainView: $IsMainView, newValue:    mainModelValue, UserID: 0)
//                
//            case Ranking:
//                RankingView()
//                
//            case Post:
//                TypeCategoryView()
//                
//            case Menu:
//                MenuView()
//                
//            case Inbox:
//                InboxView()
//            }
//        }
//    }
//}
//#Preview {
//    TabSelect2()
//}
