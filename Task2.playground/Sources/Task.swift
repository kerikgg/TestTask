//
//  Task.swift
//  
//
//  Created by Кирилл Абрамов on 19.11.2026.
//

import Foundation

public enum Priority {
    case low
    case medium
    case high
}

public enum Status {
    case created
    case inProgress
    case completed
}

public struct Task {
    public let id: UUID
    public var title: String
    public var description: String
    public let createdAt: Date
    public var priority: Priority
    public var status: Status
}
