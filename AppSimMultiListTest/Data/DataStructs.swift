//
//  Data.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/5/25.
//

import Foundation
import SwiftUI


// add your locaion to this array.

//var locations: [Location] = [loc0000, loc0001, loc0002, loc0003, loc0410, loc7000, loc3000, loc4000, loc5000, loc6000, loc1000, loc2000, loc0470, loc0480, loc0490]


// move items to AppState
//var items: [Item] = [item0410, itemfdf404, itemfdfDucky, item0472, item1001, fdfItem0480, fdfItem0490, itemfdfArcade, itemfdfBinary]



class AppState: ObservableObject {
    @Published var pItems: [Item] = [item0410, itemfdf404, itemfdfDucky, item0472, item1001, fdfItem0480, fdfItem0490, itemfdfArcade, itemfdfBinary]
//    @Published var userName: String = "Derek"
    @Published var pLocations: [Location] = [loc0000, loc0001, loc0002, loc0003, loc0410, loc7000, loc3000, loc4000, loc5000, loc6000, loc1000, loc2000, loc0470, loc0480, loc0490]
    @Published var pCurrentLocation = 0
}






var player1 = Player(playerName: "Mr. Fitzer", items: [], cash: 20)

struct Location: Identifiable {
    var id = UUID()
    var mapID: Int //this is the XXXX number from the DestinationsData View
    var locationName: String
    var blocks: [PTBlock] // image text combos
    var actions: [Action] = []  // determine what destination action and claim buttons.
    var sound: String? // play this sound when location loads
//    var customLocationLaunch: AnyView?
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

// loadCustomView - load a custom swiftui view using the goLocation as the identifier
// loadLocation - load a location using the goLocation
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


struct Purchase: Identifiable, Hashable{
    var id = UUID()
    var itemName: String
    var itemImage: String
    var itemCost: Int
    var owned = false
}



var fdfPurch0010 = Purchase(itemName: "Orange Fanta", itemImage: "fdfFanta", itemCost: 10)
var purchases: [Purchase] = [fdfPurch0010]
