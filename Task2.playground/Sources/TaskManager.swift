//
//  TaskManager.swift
//  
//
//  Created by Кирилл Абрамов on 19.11.2026.
//

import Foundation

public final class TaskManager {
    private var tasks: [UUID: Task] = [:]
    
    public init() {}
    
    @discardableResult
    public func addTask(title: String, description: String, priority: Priority) -> Task {
        let newTask = Task(
            id: UUID(),
            title: title,
            description: description,
            createdAt: Date(),
            priority: priority,
            status: .created
        )
        tasks[newTask.id] = newTask
        
        return newTask
    }
    
    public func deleteTask(id: UUID) -> Bool {
        tasks.removeValue(forKey: id) != nil
    }
    
    public func updateTaskStatus(id: UUID, status: Status) -> Bool {
        guard var task = tasks[id] else { return false }
        
        task.status = status
        tasks[id] = task
        return true
    }
    
    public func getTasks() -> [Task] {
        tasks.values.map { $0 }
    }
    
    public func getCompletedTasks() -> [Task] {
        tasks.values.filter { $0.status == .completed }
    }
    
    public func getTasksByPriority(_ priority: Priority) -> [Task] {
        tasks.values.filter { $0.priority == priority }
    }
    
    public func sortTasksByDate() -> [Task] {
        tasks.values.sorted { $0.createdAt < $1.createdAt }
    }
}
