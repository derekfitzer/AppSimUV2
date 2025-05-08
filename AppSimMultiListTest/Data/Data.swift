//
//  Data.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/5/25.
//

import Foundation
import SwiftUI

var locations: [Location] = [loc0000, loc0001, loc0002, loc0003]

var loc0000 = Location(mapID: 0, locationName: "Welcome to The Campus", bgImage: "map1", blocks: [loc0000B1], actions: [act0001, act0002, act0003])
var loc0000B1 = ITBlock(image: "map1", text: "Welcome to the Campus", actions: [])

var loc0001 = Location(mapID: 1, locationName: "J Hall", owner: "Mr. Fitzer", bgImage: "jh", blocks: [sampleITB1], actions: [fdfFindArt, act6000,act7000, act0002, act0003, act0004 ], sounds: [])
var act0001 = Action(type: .loadLocation, text: "Visit J Hall", goLocation: 1)
var act0004 = Action(type: .loadGlobalView, text: "Visit the Archive", goLocation: 0)
var loc0002 = Location(mapID: 2, locationName: "Commons", owner: "Mr. Fitzer", bgImage: "commons", blocks: [sampleITB1], actions: [act1000, act2000, act0001, act0003], sounds: [])
var act0002 = Action(type: .loadLocation, text: "Visit Commons", goLocation: 2)
var loc0003 = Location(mapID: 3, locationName: "Dorms", owner: "Mr. Fitzer", bgImage: "dorm", blocks: [sampleITB1], actions: [act3000, act4000, act5000, act0001, act0002], sounds: [])
var act0003 = Action(type: .loadLocation, text: "Visit Dorms", goLocation: 3)




var sampleITB1 = ITBlock(image: "fdfmap", text: "sample 1 - This is the sample information to display for the first blockl", actions: [a0])
var sampleITB2 = ITBlock(image: "fdfmap", text: "sample 2", actions: [a4, a0])
var sampleITB3 = ITBlock(image: "fdfmap", text: "sample 3", actions: [a0])

var a1 = Action(type: .loadCustomView, text: "linkTest 1", goLocation: 1)
var a2 = Action(type: .loadLocation, text: "Load Test", goLocation: 2)
var a3 = Action(type: .loadCustomView, text: "link test 2", goLocation: 0)
var a4 = Action(type: .claim, text: "claim the item", goLocation: 0)
var a5 = Action(type: .loadCustomView, text: "grab the coin", goLocation: 1)
var a0 = Action(type: .next, text: "View Next Item", goLocation: 0)

var player1 = Player(playerName: "Mr. Fitzer", items: [], cash: 0)

struct Location: Identifiable {
    var id = UUID()
    var mapID: Int //this is the XXXX number from the DestinationsData View
    var locationName: String
    var owner: String? // student name
    var bgImage: String // this is the background image for your location
    var blocks: [ITBlock] // image text combos
    var actions: [Action] = []  // determine what destination action and claim buttons.
    var sounds: [String]?  // sound 0 - 3 used for rando ambient, other spaces are for one off sounds. make positions 0 - 3 redundant if you are only using one ambient sound.
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

var fdfFindArt = Action(type: .claim, text: "Pick up Archive Key", goLocation: 1, hasAlert: true, alertText: "You have found the key to the archive")
 
// types of button interactions
enum t {
case loadCustomView,loadLocation,claim,next, loadGlobalView
}



struct Item{
    var id = UUID()
    var name: String
    var itemID: Int  // this is the user location #
    var itemDescription: String
    var itemImage: String
    var itemIcon: String
}

struct Conspiracy{  // achievements
    var id = UUID()
    var name: String
    var requiredItems: [Item]
    var collectedItems: [Item] = []
    var textBlocks: [String]
}

struct ITBlock: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var text: String
    var actions: [Action]
}

struct Player{
    var playerName: String
    var items: [Int]
    var cash: Int
}

struct Student{
    var studentName: String
    var resume: Resume
    var portfolio: [ITBlock]
}

struct Resume {
    
}

var msg404 = ["kerrerd fis napp rost pllea e4aas thi 23lskkkdd","We appologise but the requested location is offline. Please contact Campus IT to report missing, disruptive, fradulent or hostile enviornments. \n\nHave a wonderful day on the Campus","We apologize but the requested location is currently experiencing a temporal shift. Please try your request later.\n\nThe Campus is Glad You Are Here","Due to high volumes of location requests your location has been shifted to an alternate universe buffer, please check back later.\n\nThe Campus Loves You","Error ID 7939210 print(someone, anyone, save us from CROG)\n\nThe Campus - Your Home Away from Home","🤡\n\nThe Campus\nYou Can Never Leave","Integrity Buffer Overrun Error 867: The requested location has experienced an morality violation. Please try again later.\n\nThe Campus YES!","The voicemail box for location has not been set up. Please try again later.\n\nThe Campus\nYou Cant Call Home"]
