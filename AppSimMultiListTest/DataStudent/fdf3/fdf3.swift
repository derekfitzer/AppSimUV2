//
//  fdf3.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/16/25.
//

import Foundation




var fdfItem0490 = Item(name: "Hex", itemID: 490, itemDescription: "You recieved the achievement by solving the Hexidecimal puzzle", itemImage: "fdfBase16Ach")

var act0491 = Action(type: .claim, text: "Claim the Hex Trophy", goLocation: 490)

var fdfPtb0050 = PTBlock(image: "fdfTech1", text: "Hey there, How can I help you? Just lookin around huh… I’ve been coding data conversion algorithms to get some of our older personas back on line. Some have been living in the archive for a long time. ")

var fdfPtb0060 = PTBlock(image: "fdfTech1", text: "Data conversion? You should start small. Let's look at base 10 and base 16. Base 16 is also referred to as a hexadecimal number.  We see them all the time when coding.")

var fdfPtb0070 = PTBlock(image: "fdfBase10", text: "If you've ever counted from 0 to 9, then you've used base-10 without even knowing what it is. Simply put, base-10 is the way we assign place value to numerals. It is sometimes called the decimal system because a digit's value in a number is determined by where it lies in relation to the decimal point.")

var fdfPtb0080 = PTBlock(image: "fdfHex1", text: "Hexadecimal, or base-16, is a number system that uses 16 unique digits to represent numbers. It uses the digits 0-9 and the letters A-F, where A=10, B=11, C=12, D=13, E=14, and F=15. Each position in a hexadecimal number represents a power of 16, similar to how each position in a decimal number represents a power of 10.")

var fdfPtb0090 = PTBlock(image: "fdfHex2", text: "To convert a hexadecimal number to base 10, multiply each hexadecimal digit by 16 raised to the power of its position (starting from the right with 0) and then sum the results.")

var fdfPtb0100 = PTBlock(image: "fdfHex2", text: "Converting a base-10 number to a hexadecimal works much like converting a base-10 number to a binary number. You divide the number by the exponent (16) and keep dividing the result until the quotient is 0. At each step you multiply the remainder by 16 to get the hex value.")

var fdfPtb0110 = PTBlock(image: "fdfTech1", text: "Did you get all that? Lets see if you have the conversion skills. Pop down to the archive and enter the hex number for 2467 (9A3) . I left you a little present.")


var loc0490 = Location(mapID: 490, locationName: "Department of Data", blocks: [fdfPtb0050, fdfPtb0060, fdfPtb0070, fdfPtb0080, fdfPtb0090, fdfPtb0100], actions: [actNext, act7000])
