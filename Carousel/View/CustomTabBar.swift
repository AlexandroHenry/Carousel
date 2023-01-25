//
//  CustomTabBar.swift
//  Carousel
//
//  Created by Seungchul Ha on 2023/01/25.
//

import SwiftUI

struct CustomTabBar: View {
    
	@Binding var currentTab: String
	
	var body: some View {
		HStack {
			ForEach(Tab.allCases, id: \.self) { tab in
				TabBarButton(title: tab.rawValue, image: tab.image(), currentTab: $currentTab)
			}
		}
		// Setting frame instead of padding...
		// For other tabs it will help to pad the bottom content...
		.frame(height: 60)
		.background(.ultraThinMaterial)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Tab Bar Button...
struct TabBarButton: View {
	var title: String
	var image: String
	@Binding var currentTab: String
	
	var body: some View {
		Button {
			withAnimation {
				currentTab = title
			}
		} label: {
			VStack(spacing: 5) {
				Image(systemName: image)
					.font(.title2)
				
				Text(title)
					.font(.caption)
					.fontWeight(.semibold)
			}
			.foregroundColor(title == currentTab ? .primary : .gray)
			.frame(maxWidth: .infinity)
		}
	}
}
