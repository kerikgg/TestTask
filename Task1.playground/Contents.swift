struct Employee {
    let name: String?
    let age: Int
    //let gender: String
    let gender: Gender /// исправленный вариант
    let salary: Int
    //let isActive: String
    let isActive: Bool /// исправленный вариант
}

enum Gender {
    case male
    case female
}

//let employees = [
//    Employee(name: "Алексей", age: 25, gender: "Мужчина", salary: 150000, isActive: "Да"),
//    Employee(name: nil, age: 30, gender: "Женщина", salary: 180000, isActive: "Да"),
//    Employee(name: "Мария", age: 22, gender: "Женщина", salary: 90000, isActive: "Нет"),
//    Employee(name: "Иван", age: 28, gender: "Мужчина", salary: 170000, isActive: "Да"),
//    Employee(name: "Екатерина", age: 35, gender: "Женщина", salary: 210000, isActive: "Нет")
//]

let employees = [
    Employee(name: "Алексей", age: 25, gender: .male, salary: 150000, isActive: true),
    Employee(name: nil, age: 30, gender: .female, salary: 180000, isActive: true),
    Employee(name: "Мария", age: 22, gender: .female, salary: 90000, isActive: false),
    Employee(name: "Иван", age: 28, gender: .male, salary: 170000, isActive: true),
    Employee(name: "Екатерина", age: 35, gender: .female, salary: 210000, isActive: false)
]

//func printEmployees() {
//    for employee in employees {
//        print(employee.name!)
//    }
//}

/// исправленный вариант
func printEmployees() {
    for employee in employees {
        if let name = employee.name {
            print(name)
        }
    }
}

printEmployees()

// MARK: - Замечания и исправления
// В консоль будет напечатано только: Алексей.
// Дальше произойдет фатальная ошибка и приложение завершит работу, тк встречается nil при попытке force unwrap.
//Вариант исправления - безопасная обработка опционального значения


//Исправление №2 - заменить тип на bool у поля isActive, тк возможно всего 2 значения (да или нет)
//Исправление №3 - можно заменить тип поля gender на enum (case male, case female). Так получится ограничить возможные значения заранее заданными вариантами.
