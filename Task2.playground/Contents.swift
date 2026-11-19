import Foundation

let taskManager = TaskManager()

// создание новых задач
let firstTask = taskManager.addTask(title: "first task", description: "first task", priority: .low)
let secondTask = taskManager.addTask(title: "seconde task", description: "seconde task", priority: .high)

// вывод задач
print("Кол-во задач: \(taskManager.getTasks().count)")
print(taskManager.getTasks())

// изменение статуса первой задачи
taskManager.updateTaskStatus(id: firstTask.id, status: .completed)

// вывод завершенных задач
print("Завершенные задачи:")
print(taskManager.getCompletedTasks())


// вывод задач по приоритету
print("Задачи с высоким приоритетом:")
print(taskManager.getTasksByPriority(.high))

// сортировка по дате
Thread.sleep(forTimeInterval: 1)
taskManager.addTask(title: "third task", description: "third task", priority: .medium)
let sortedTasks = taskManager.sortTasksByDate()
print("Задачи отсортированные по времени:")
print(sortedTasks)

// удаление задач
taskManager.deleteTask(id: secondTask.id)
print("Оставшиеся задачи:")
print(taskManager.getTasks())
