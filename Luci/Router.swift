//
//  Route.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 21/05/26.
//

import Foundation
import SwiftUI
import Combine

class Router: ObservableObject {
    @Published var path = NavigationPath()
}
