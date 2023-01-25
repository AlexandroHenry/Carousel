//
//  Tab.swift
//  Carousel
//
//  Created by Seungchul Ha on 2023/01/25.
//

import SwiftUI

enum Tab: String, CaseIterable {
	case foryou = "For You"
	case search = "Search"
	case following = "Follwing"
	case downloads = "Downloads"
	
	func image() -> String {
		switch self {
		case .foryou:
			return "rectangle.portrait"
		case .search:
			return "magnifyingglass"
		case .following:
			return "bookmark"
		case .downloads:
			return "square.and.arrow.down"
		}
	}
}
