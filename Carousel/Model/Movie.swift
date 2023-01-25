//
//  Movie.swift
//  Carousel
//
//  Created by Seungchul Ha on 2023/01/25.
//

import SwiftUI

// Data Model And Sample Data...
struct Movie: Identifiable {
	var id = UUID().uuidString
	var moviewName: String
	var artwork: String
}

var movies = [
	Movie(moviewName: "ANT-MAN-WASP: Quantumania", artwork: "post1"),
	Movie(moviewName: "AVENGERS: End Game", artwork: "post2"),
	Movie(moviewName: "AVENGERS: Infinity War", artwork: "post3"),
	Movie(moviewName: "BLACK PANTHER: Wakanda Forever", artwork: "post4"),
	Movie(moviewName: "BLACK X WIDOW", artwork: "post5"),
	Movie(moviewName: "CAPTAIN MARVEL", artwork: "post6"),
	Movie(moviewName: "DEADPOOL", artwork: "post7"),
	Movie(moviewName: "DEADPOOL 2", artwork: "post8"),
	Movie(moviewName: "DOCTOR STRANGE IN THE MULTIVERSE OF MADNESS", artwork: "post9"),
	Movie(moviewName: "ETERNALS", artwork: "post10"),
	Movie(moviewName: "GUARDIANS OF THE GALAXY: Volume 3.", artwork: "post11"),
	Movie(moviewName: "SPIDER-MAN: No Way Home", artwork: "post12"),
	Movie(moviewName: "THOR: Love And Thunder", artwork: "post13"),
	Movie(moviewName: "THOR: Ragnarok", artwork: "post14"),
	Movie(moviewName: "SHANG-CHI: Legend Of The Ten Rings", artwork: "post15"),
]
