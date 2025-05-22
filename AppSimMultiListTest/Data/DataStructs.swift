//
//  Data.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/5/25.
//

import Foundation
import SwiftUI





class AppState: ObservableObject {
    // students add your item(s) to the end of this array.
    @Published var pItems: [Item] = [item0410, itemfdf404, itemfdfDucky, item0472, item1001, fdfItem0480, fdfItem0490, itemfdfArcade, itemfdfBinary]

    // students - add you location to the end of this array.
    @Published var pLocations: [Location] = [loc0000, loc0001, loc0002, loc0003, loc0410, loc7000, loc3000, loc4000, loc5000, loc6000, loc1000, loc2000, loc0470, loc0480, loc0490]
    
    // DO NOT modify these!
    @Published var pCurrentLocation = 0 // go location number
    @Published var currentLocationIndex = 0 // array position
    @Published var currentActions: [Action] = [act0001,act0002,act0003]
    @Published var currentITBlock = 0
    @Published var foundLocations = 0
}


// Add your instance of the resume struct to this array. See DataResume for the struct.

var resumes: [resume] = [fdfRes]


// If you are using a custom location replace the ArchiveRandomRoom with your custom view in the array below. If you need an additional view please see mr fitzer.
var views: [AnyView] = [
    AnyView(ArchiveView()) // 0 - Archive View
    ,AnyView(LockView()) // 1 - Archive Locked View
    ,AnyView(CommissaryView(gold: player1.cash)) // 2 - Commisary View
    ,AnyView(ArchiveRandoRoom()) // 3 - Adams, Uriah
    ,AnyView(ArchiveRandoRoom()) // 4 - Amaya, VillaltaNoe
    ,AnyView(ArchiveRandoRoom()) // 5 - Bonnell-Wright, Brayden
    ,AnyView(ArchiveRandoRoom()) // 6 - Bueter, Jayson
    ,AnyView(ArchiveRandoRoom()) // 7 - Burgos, Jendrick
    ,AnyView(ArchiveRandoRoom()) // 8 - Campoverde, Luis
    ,AnyView(ArchiveRandoRoom()) // 9 - Cortez,  SalgadoAaron
    ,AnyView(ArchiveRandoRoom()) // 10 - Delong, Peyton
    ,AnyView(ArchiveRandoRoom()) // 11 - Dene, Noor
    ,AnyView(ArchiveRandoRoom()) // 12 - Hale, Jacen
    ,AnyView(ArchiveRandoRoom()) // 13 - Harbuziuk, Bohdan
    ,AnyView(ArchiveRandoRoom()) // 14 - Kmetz, Gage
    ,AnyView(ArchiveRandoRoom()) // 15 - Lane, Ian
    ,AnyView(ArchiveRandoRoom()) // 16 - Meyers, A'Lijah
    ,AnyView(ArchiveRandoRoom()) // 17 - Moore, Cecelia
    ,AnyView(ArchiveRandoRoom()) // 18 - Moreland, Raniyah
    ,AnyView(ArchiveRandoRoom()) // 19 - Self, Vincent
    ,AnyView(ArchiveRandoRoom()) // 20 - Moroz, Vitalina
    ,AnyView(ArchiveRandoRoom()) // 21 - Suchek, Arsen
    ,AnyView(ArchiveRandoRoom()) // 22 - Wolford, Reaghan
    ,AnyView(ArchiveRandoRoom()) // 23 - Zornes, John
    ,AnyView(ArchiveRandoRoom()) // 24 -
    ,AnyView(ArchiveRandoRoom()) // 25 -
    ,AnyView(ArchiveRandoRoom()) // 26 -
    ,AnyView(ArchiveRandoRoom()) // 27 -
    ,AnyView(ArchiveRandoRoom()) // 28 -
    ,AnyView(ArchiveRandoRoom()) // 29 -
    ,AnyView(ArchiveRandoRoom()) // 30 -
    ,AnyView(ArchiveRandoRoom()) // 31 -
    ,AnyView(ArchiveRandoRoom()) // 32 -
    ,AnyView(ArchiveRandoRoom()) // 33 -
    ,AnyView(ArchiveRandoRoom()) // 34 -
    ,AnyView(ArchiveRandoRoom()) // 35 -
    ,AnyView(ArchiveRandoRoom()) // 36 -
    ,AnyView(ArchiveRandoRoom()) // 37 -
    
] as [AnyView]




var player1 = Player(playerName: "Mr. Fitzer", items: [], cash: 20)

struct Location: Identifiable {
    var id = UUID()
    var mapID: Int //this is the XXXX number from the DestinationsData View
    var locationName: String
    var blocks: [PTBlock] // image text combos
    var actions: [Action] = []  // determine what destination action and claim buttons.
    var sound: String? // play this sound when location loads
    var visited = false // this will change to true when your location is visited.
    
    }

struct Action: Identifiable, Hashable {
    var id = UUID() // Needed for list views do not modify.
    var type: actionType // Type of action - see enum below
    var text: String // displayed on list button
    var goLocation: Int// this will load a location or it item by using a destination number
    var loadCustomView: Int? // this will launch a custom view with a back button
    var customSound: String?
    

}


 
// types of button interactions

enum actionType {
case loadCustomView,loadLocation,claim,next, loadGlobalView
}




struct Conspiracy{  // achievements
    var id = UUID()
    var itemID: Int
    var name: String
    var description: String
    var requiredItemIDs: [Int]
    var textBlocks: [String] // coresponds to collectedItemIDs, revealed with each collected item
    var AwardItem: Item // item given if all items are collected.
    var claimed = false
}

struct PTBlock: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var text: String
    var actions: [Action] = []
    var sound: String?
    
}

struct Player{
    var playerName: String
    var items: [Int]
    var cash: Int
    var visitedLocations = 0
}

struct Student{
    var studentName: String
   // var resume: Resume
    var portfolio: [PTBlock]
}


// 404 missing location error flavor text.

var msg404 = ["kerrerd fis napp rost pllea e4aas thi 23lskkkdd","We appologise but the requested location is offline. Please contact Campus IT to report missing, disruptive, fradulent or hostile enviornments. \n\nHave a wonderful day on the Campus","We apologize but the requested location is currently experiencing a temporal shift. Please try your request later.\n\nThe Campus is Glad You Are Here","Due to high volumes of location requests your location has been shifted to an alternate universe buffer, please check back later.\n\nThe Campus Loves You","Error ID 7939210 print(someone, anyone, save us from CROG)\n\nThe Campus - Your Home Away from Home","🤡\n\nThe Campus\nYou Can Never Leave","Integrity Buffer Overrun Error 867: The requested location has experienced an morality violation. Please try again later.\n\nThe Campus YES!","The voicemail box for location has not been set up. Please try again later.\n\nThe Campus\nYou Cant Call Home"]


var archiveRando = ["randoArch0001","randoArch0002","randoArch0003","randoArch0004","randoArch0005","randoArch0006","randoArch0007","randoArch0008","randoArch0009","randoArch0010","randoArch0011","randoArch0012","randoArch0013","randoArch0014"]

var archiveRandoSound = ["randoArchSound0001","randoArchSound0002","randoArchSound0003","randoArchSound0004","randoArchSound0005","randoArchSound0006","randoArchSound0007","randoArchSound0008","randoArchSound0009","randoArchSound0010","randoArchSound0011","randoArchSound0012"]

struct Purchase: Identifiable, Hashable{
    var id = UUID()
    var itemName: String
    var itemImage: String
    var itemCost: Int
    var owned = false
}



var fdfPurch0010 = Purchase(itemName: "Orange Fanta", itemImage: "fdfFanta", itemCost: 10)
var purchases: [Purchase] = [fdfPurch0010]
