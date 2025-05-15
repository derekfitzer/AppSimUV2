//
//  DataLocations.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/7/25.
//

import Foundation

// DO NOT PLACE STUDENT LOCATIONS IN THIS FILE!!!!!



var loc0470 = Location(mapID: 470, locationName: "App&Sim", blocks: [ptb0470, ptb0471, ptb0472], actions: [actNext, act1000 ])

var ptb0470 = PTBlock(image: "fdfStore", text: "Welcome to the App&Sim. We have information about the program at the South-Western Career Academy in Grove City Ohio. That's back on Earth")
var ptb0471 = PTBlock(image: "fdfStore", text: "Students in app and sim work with code, 3d, and more.")
var ptb0472 = PTBlock(image: "fdfStore", text: "Feel free to take a flyer about the program.", actions: [act0472])
var act0472 = Action(type: .claim, text: "Take Flyer", goLocation: 472)

var loc0000 = Location(mapID: 0, locationName: "Welcome to The Campus",blocks: [loc0000B1], actions: [act0001, act0002, act0003], sound: "silence")
var loc0000B1 = PTBlock(image: "dean1", text: "Welcome to the Campus", actions: [])

var loc0001 = Location(mapID: 1, locationName: "Jerimiah Hall", blocks: [itbCommons, sampleITB2, sampleITB3], actions: [archiveDoor, act6000,act7000, act0002, act0003 ], sound: "fdfJhallNew")

var act0001 = Action(type: .loadLocation, text: "Jerimiah Hall Lobby", goLocation: 1)
var act0004 = Action(type: .loadGlobalView, text: "Archive - Lower Level", goLocation: 0)
//var actARK = Action(type: .claim, text: "Claim Archive Key", goLocation: 410)

var loc0002 = Location(mapID: 2, locationName: "Blobert Commons",  blocks: [itbCommons2], actions: [act1000, act2000, act0001, act0003], sound: "fdfCafe" )
var act0002 = Action(type: .loadLocation, text: "Blobert Commons Lobby", goLocation: 2)

var loc1000 = Location(mapID: 1000, locationName: "Commons North Hall",  blocks: [ptb1000], actions: [act0470, act0100, act0110, act0120, act0130, act0140, act0002], sound: "fdfCafe" )
var ptb1000 = PTBlock( image: "fdfJHallLobby2", text: "Commons North Hall", actions: [], sound: "fdfCafe")
var itbCommons = PTBlock(image: "fdfJHallLobby2", text: "Explore Jerimiah Hall to meet our innovators and entrepreneurs", actions: [a0])

var loc2000 = Location(mapID: 2000, locationName: "Commons South Hall", blocks: [ptb1000], actions: [act0150, act0160, act0170, act0180, act0190, act0002], sound: "fdfCafe" )
var ptb2000 = PTBlock( image: "fdfJHallLobby2", text: "Commons South Hall", actions: [], sound: "fdfCafe")




var loc0003 = Location(mapID: 3, locationName: "Nieve Dormitory", blocks: [dormLobby], actions: [act3000, act4000, act5000, act0001, act0002] , sound: "fdfDormMusic")
var act0003 = Action(type: .loadLocation, text: "Nieve Dormitory Lobby", goLocation: 3)

var loc3000 = Location(mapID: 3000, locationName: "Dorms 2st Floor Lobby",blocks: [ptb3000], actions: [act0003], sound: "fdfElevator")
var ptb3000 = PTBlock(image: "fdfDormFloor", text: "Welcome to Nieve Dorms 2st Floor Lobby", actions: [act0200, act0210,act0220,act0230,act0240,act0250, act0003], sound: "fdfElevator")

var loc4000 = Location(mapID: 4000, locationName: "Dorms 3rd Floor Lobby", blocks: [ptb4000], actions: [act0260, act0270,act0220,act0280,act0290,act0300, act0310, act0003], sound: "fdfElevator")
var ptb4000 = PTBlock(image: "fdfDormFloor", text: "Welcome to Nieve Dorms 3rd Floor Lobby", actions: [], sound: "fdfElevator")

var loc5000 = Location(mapID: 5000, locationName: "Dorms 4th Floor Lobby", blocks: [ptb5000], actions: [act0320, act0270,act0330,act0340,act0350,act0360, act0370, act0003], sound: "fdfElevator")
var ptb5000 = PTBlock(image: "fdfDormFloor", text: "Welcome to Nieve Dorms 4th Floor Lobby", actions: [], sound: "fdfElevator")



var loc7000 = Location(mapID: 7000, locationName: "Jerimiah Hall\n3rd Floor lobby", blocks: [itb7001], actions: [act0380, act0390, act0400, act0410, act0420, act0001], sound: "fdfElevator")
var itb7001 = PTBlock(image: "fdfJHallLobby", text: "Welcome to the 3rd Floor Lobby", actions: [])
//var itb0410 = PTBlock(image: "dean1", text: "Hello, My name is Franz Fitzer. I'm the dean of personas on Campus. I'm glad you can visit, there are some talented and creative students on the Campus", actions: [act0412], sound: "unlock")
var loc6000 = Location(mapID: 6000, locationName: "Jerimiah Hall\n2nd Floor lobby", blocks: [itb6001], actions: [act0430, act0440, act0450, act0460, act0470, act0480, act0001], sound: "fdfElevator")
var itb6001 = PTBlock(image: "fdfJHallLobby", text: "Welcome to the 2nd Floor Lobby", actions: [])
//var itb0410 = PTBlock(image: "dean1", text: "Hello, My name is Franz Fitzer. I'm the dean of personas on Campus. I'm glad you can visit, there are some talented and creative students on the Campus", actions: [act0412], sound: "unlock")


var act0411 = Action(type: .claim, text: "Claim the Archive Key", goLocation: 410)
var actNext = Action(type: .next, text: "Next", goLocation: 410)
// var actNext = Action(type: .next, text: "Next", goLocation: 0)


var dormLobby = PTBlock(image: "dorms", text: "This is the residence hall for the Campus", actions: [])

var itbCommons2 = PTBlock(image: "fdfCommons", text: "Blobert Commons is a great place to grab a meal and explore the unique shops and vendors of the Campus", actions: [])
var sampleITB2 = PTBlock(image: "JHall2", text: "Our facilities are state of the art with exceptional processing and storage capabilities", actions: [a0])
var sampleITB3 = PTBlock(image: "JHall3", text: "The archive on the lower level is a secure location and requires a key", actions: [a0], sound: "reveal")

var a1 = Action(type: .loadCustomView, text: "linkTest 1", goLocation: 1)
var a2 = Action(type: .loadLocation, text: "Load Test", goLocation: 2)
var a3 = Action(type: .loadCustomView, text: "link test 2", goLocation: 0)
var a4 = Action(type: .claim, text: "claim the item", goLocation: 0)
var a5 = Action(type: .loadCustomView, text: "grab the coin", goLocation: 1)
var a0 = Action(type: .next, text: "View Next Item", goLocation: 0)

