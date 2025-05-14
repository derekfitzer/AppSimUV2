//
//  Data.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/5/25.
//

import Foundation
import SwiftUI


// add your locaion to this array.

var locations: [Location] = [loc0000, loc0001, loc0002, loc0003, loc0410, loc7000, loc3000, loc4000, loc5000, loc6000, loc1000, loc2000]

var player1 = Player(playerName: "Mr. Fitzer", items: [], cash: 0)

struct Location: Identifiable {
    var id = UUID()
    var mapID: Int //this is the XXXX number from the DestinationsData View
    var locationName: String
    var owner: String? // student name
    var bgImage: String // this is the background image for your location
    var blocks: [PTBlock] // image text combos
    var actions: [Action] = []  // determine what destination action and claim buttons.
    var sound: String? // play this sound when location loads
    var customLocationLaunch: AnyView?
    var item: Item?
    }

struct Action: Identifiable, Hashable {
    var id = UUID()
    var type: t // see enum below
    var text: String // displayed on list button
    var goLocation: Int// this will load a location by using a destination number
    var loadCustomView: Int? // this will launch a custom view with a back button
    var customSound: String?
    var hasAlert: Bool?
    var alertText: String?
}

//var fdfFindArt = Action(type: .claim, text: "Pick up Archive Key", goLocation: 1, hasAlert: true, alertText: "You have found the key to the archive")
 
// types of button interactions
enum t {
case loadCustomView,loadLocation,claim,next, loadGlobalView
}





struct Conspiracy{  // achievements
    var id = UUID()
    var name: String
    var requiredItems: [Item]
    var collectedItems: [Item] = []
    var textBlocks: [String]
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
}

struct Student{
    var studentName: String
    var resume: Resume
    var portfolio: [PTBlock]
}

struct Resume {
    
}

// 404 missing location error flavor text.

var msg404 = ["kerrerd fis napp rost pllea e4aas thi 23lskkkdd","We appologise but the requested location is offline. Please contact Campus IT to report missing, disruptive, fradulent or hostile enviornments. \n\nHave a wonderful day on the Campus","We apologize but the requested location is currently experiencing a temporal shift. Please try your request later.\n\nThe Campus is Glad You Are Here","Due to high volumes of location requests your location has been shifted to an alternate universe buffer, please check back later.\n\nThe Campus Loves You","Error ID 7939210 print(someone, anyone, save us from CROG)\n\nThe Campus - Your Home Away from Home","🤡\n\nThe Campus\nYou Can Never Leave","Integrity Buffer Overrun Error 867: The requested location has experienced an morality violation. Please try again later.\n\nThe Campus YES!","The voicemail box for location has not been set up. Please try again later.\n\nThe Campus\nYou Cant Call Home"]
