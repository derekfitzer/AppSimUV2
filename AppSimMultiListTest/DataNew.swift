//
//  Data.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/5/25.
//

import Foundation
import SwiftUI

var locations: [Location] = [loc0000, loc0001]

var loc0000 = Location(mapID: 0, locationName: "Lobby", bgImage: "map1", blocks: [sampleITB1, sampleITB2, sampleITB3], actions: [a1, a2, a4,a5])
var loc0001 = Location(mapID: 0, locationName: "Lobby", bgImage: "map1", blocks: [sampleITB1, sampleITB2], actions: [a4,a5])


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
