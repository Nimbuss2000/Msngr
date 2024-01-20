//
//  SettingsOptionViewModel.swift
//  Missanger
//
//  Created by Alexey Larionov on 19.01.2024.
//

import Foundation


enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case activeStatus
    case accsessibility
    case privacy
    case notifications
    
    var title: String {
        switch self {
        case.darkMode: return "Dark Mode"
        case.activeStatus: return "Active Status"
        case.accsessibility: return "Accessibiblity"
        case.privacy: return "Privacy"
        case.notifications: return "Notifications"
        }
    }    
    
    var image: String {
        switch self {
        case.darkMode: return "moon.circle.fill"
        case.activeStatus: return "message.circle.fill"
        case.accsessibility: return "person.circle.fill"
        case.privacy: return "lock.circle.fill"
        case.notifications: return "bell.circle.fill"
        }
    }
    
    var id: Int {return self.rawValue}
}

