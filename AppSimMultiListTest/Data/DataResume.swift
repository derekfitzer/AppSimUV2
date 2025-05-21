//
//  DataResume.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/20/25.
//

import Foundation

var resumes: [resume] = [fdfRes]

struct resume: Codable, Equatable, Identifiable {
    var id = UUID()
    var name: String
    var objective: String
    var education: [String]
    var skills: [String]
    var workExperience: [String]
    var affiliations: [String]
    var honorAward: [String]
    var portfolioImageNames: [String]
}


var fdfRes = resume(name: "Derek Fitzer", objective: "Facilitate instruction for career technical students", education: ["Masters of Education","University of Rio Grande","Bachelors of Science","Technology Education","The Ohio State University"], skills: ["Digital Content Creation","Swift - UIKit and SwiftUI","Digital Studio Production","3D Content Creation"], workExperience: ["App and Simulation Developmen","South-Western Career Academy","1995 to Present"], affiliations: ["Ohio ACTE"], honorAward: ["South-Western City Schools Ambassador Award","South-Western City Schools School Bell Award","Ohio ACTE Teacher of the year 2020"], portfolioImageNames: ["fdfFanta","fdfDucky","fdfjh1"])




