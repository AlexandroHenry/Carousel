//
//  VerticalCarouselList.swift
//  Carousel
//
//  Created by Seungchul Ha on 2023/01/25.
//

import SwiftUI

// Custom View builder...
struct VerticalCarouselList<Content: View>: UIViewRepresentable {

	var content: Content
	
	init(@ViewBuilder content: @escaping () -> Content) {
		self.content = content()
	}
	
	func makeUIView(context: Context) -> some UIScrollView {
		
		let scrollView = UIScrollView()
		setUp(scrollView: scrollView)
		return scrollView
	}
	
	func updateUIView(_ uiView: UIViewType, context: Context) {
		
	}
	
	func setUp(scrollView: UIScrollView) {
		
		scrollView.isPagingEnabled = true
		scrollView.showsVerticalScrollIndicator = false
		
		// Extracting SwiftUI View ...
		let hostView = UIHostingController(rootView: content)
		
		// Clearing BG Color of UIView...
		hostView.view.backgroundColor = .clear
		
		// Constraints....
		hostView.view.translatesAutoresizingMaskIntoConstraints = false
		
		let constraints = [
			
			hostView.view.topAnchor.constraint(equalTo: scrollView.topAnchor),
			hostView.view.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
			hostView.view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
			hostView.view.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
			
			// Width...
			hostView.view.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
		]
		
		scrollView.addSubview(hostView.view)
		scrollView.addConstraints(constraints)
	}
}
