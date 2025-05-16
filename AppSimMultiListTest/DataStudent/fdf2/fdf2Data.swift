//
//  fdf2.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/15/25.
//

import Foundation


// Step 0 - find your location id, this can be found in the DataActions where there is an action that goes to your location.
// Here is the action for this location.
// var act0480 = Action(type: .loadLocation, text: "Custodial Closet", goLocation: 480)

// Step 1 - Build your claimable item - ADD THE ITEM TO THE ITEMS ARRAY IN DATASTRUCTS

var fdfItem0480 = Item(name: "Dr. Chen", itemID: 480, itemDescription: "This small bottle is the home of a Campus faculty member", itemImage: "fdfAlienItem")

//  Step 2 - Create a claim item action for the item , this makes the button that will claim the item and mark as found in the array of items. Note: Name this action yourlocation + 1, the action act0480 is already used to navigate to the location.


var act0481 = Action(type: .claim, text: "Claim the Dr. Chen Achievement", goLocation: 480)

// Step 3 - Define all of you picture and text blocks. NOTE: One of the blocks should contain an action to claim an item.

var fdfPtb0010 = PTBlock(image: "fdfCustodialCloset", text: "The custodial closet on Floor 2 of The Campus had always been ordinary - until the day the bottle of Pine-Fresh Digital Clean started to glow. At first, the cleaning staff assumed it was just another quirk of the building's quantum architecture, but then the bottle began to speak.")

var fdfPtb0020 = PTBlock(image: "fdfJarFace", text: "Hello? Can anyone hear me?. The voice was tinny, emanating from behind the label. I think there's been a terrible mistake with my digital conversion.")

var fdfPtb0030 = PTBlock(image: "fdfFace", text: "Inside the translucent amber liquid, a face occasionally formed in pixelated bubbles - Subject 2749, formerly Dr. Sarah Chen, quantum computing professor. During a routine digital persona transfer, her data stream had somehow been redirected into the smart-cleaning solution.", sound: "fdfBubbles")

var fdfPtb0040 = PTBlock(image: "fdfOddAlien", text: "It's actually quite cozy in here, she'd tell the startled maintenance workers. The pine scent is surprisingly compatible with my code structure. Though I do wish someone would stop using me to mop the quantum physics lab - it's rather disorienting seeing my old classroom from inside a mop bucket.\n\nThe IT department claimed they'd get around to extracting her eventually. Meanwhile, Dr. Chen made the best of it, tutoring the night shift staff on advanced mathematics and keeping the closet's inventory database impeccably organized.", actions: [act0481])

// Step 4 - create the location, add the blocks and actions. ADD THE LOCATION TO THE LOCATIONS ARRAY IN DATASTRUCTS

var loc0480 = Location(mapID: 480, locationName: "Custodial Closet", blocks: [fdfPtb0010, fdfPtb0020, fdfPtb0030, fdfPtb0040], actions: [actNext, act6000], sound: "fdfCustodialMusic")





