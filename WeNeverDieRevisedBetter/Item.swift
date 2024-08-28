//
//  Item.swift
//  WeNeverDieRevisedBetter
//
//  Created by Conner Yoon on 8/27/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

class Game {
    var saveSelection : [GameSaves]
    var userSettings : UserSettings
   
    init(saveSelection: [GameSaves], userSettings: UserSettings) {
        self.saveSelection = saveSelection
        self.userSettings = userSettings
    }
}

@Model
class GameSaves {
    var name : String
    init(name: String = Date().description(with: .current)) {
        self.name = name
    }
}

@Model
class UserSettings {
    var leftHanded : Bool
    init(leftHanded : Bool = false) {
        self.leftHanded = leftHanded
    }
}

