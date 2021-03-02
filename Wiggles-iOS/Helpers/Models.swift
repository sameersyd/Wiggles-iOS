//
//  Models.swift
//  Wiggles-iOS
//
//  Created by Sameer Nawaz on 02/03/21.
//

import SwiftUI

// Lazy Navigation to load (constructor) after clicked on Button
struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) { self.build = build }
    var body: Content { build() }
}
