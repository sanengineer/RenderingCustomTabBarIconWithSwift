//
//  State.swift
//  RenderingCustomTabBarIconWithSwift
//
//  Created by San Engineer on 23/12/21.
//

import Foundation
import SwiftUI

struct tabItem: Codable {
    var tag: Int
    var tabDeactive: String
    var tabActive: String
    var tabName: String
    var typeImage: String
}

class State: ObservableObject {
    @Published var selectionTab = 0
    @Published var tabCollection = [
        tabItem(tag: 0, tabDeactive: "home.cf", tabActive: "home.fill.cf",
                tabName: "Validate", typeImage: "Font"),
        tabItem(tag: 1, tabDeactive: "home", tabActive: "home.fill", tabName: "Unvalidate", typeImage: "Image"),
        tabItem(tag: 2, tabDeactive: "human.cf", tabActive: "human.fill.cf", tabName: "Validate", typeImage: "Font"),
        tabItem(tag: 3, tabDeactive: "human", tabActive: "human.fill", tabName: "Unvalidate", typeImage: "Image")
    ]
}
