//: Playground - noun: a place where people can play

import UIKit

enum StudentYear: Int {
    case freshman, sophomore, junior, senior
}

struct Student {
    let firstName: String
    let lastName: String
    let id: Int
    let year: StudentYear
    let grade: Int
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.id  = Int(arc4random_uniform(1000))
        self.year = StudentYear(rawValue: Int(arc4random_uniform(4))) ?? .freshman
        self.grade = Int(arc4random_uniform(101))
    }
}

var students: [Student] = [
    Student(firstName: "Sterling", lastName: "Archer"),
    Student(firstName: "Lana", lastName: "Kane"),
    Student(firstName: "Cheryl", lastName: "Tunt"),
    Student(firstName: "Pam", lastName: "Poovey"),
    Student(firstName: "Cyril", lastName: "Figgis"),
    Student(firstName: "Ray", lastName: "Gillette"),
    Student(firstName: "Malory", lastName: "Archer"),
    Student(firstName: "Barry", lastName: "Dillon"),
    Student(firstName: "Ron", lastName: "Cadillac"),
    Student(firstName: "Ross", lastName: "Geller"),
    Student(firstName: "Chandler", lastName: "Bing"),
    Student(firstName: "Rachel", lastName: "Green"),
    Student(firstName: "Joey", lastName: "Tribbiani"),
    Student(firstName: "Monica", lastName: "Geller"),
    Student(firstName: "Phoebe", lastName: "Buffay")
]

// TODO: - Create an array that contains only the freshmen from the student array using the filter function
func freshmen(arr: [Student]) -> [Student] {
    return arr.filter { $0.year == .freshman }
}


// TODO: - Create an array that contains only the full names (first name concatenated with the last name) from the student array using the map function
func concatNames(arr: [Student]) -> [String] {
    return arr.map { "\($0.firstName) \($0.lastName)"}
}


// TODO: - Return the average grade from all the students using the reduce function divided by the count
func averageGrade(arr: [Student]) -> Int {
    return arr.reduce(0, { $0 + $1.grade }) / arr.count
}

print("FRESHMEN ONLY")
var freshmenStudents = freshmen(arr: students)
for student in freshmenStudents {
    print(student.firstName)
}

print("\nALL STUDENTS FULL NAMES")
var fullNames = concatNames(arr: students)
for student in fullNames {
    print(student)
}

print("\nAVERAGE OF ALL STUDENT GRADES")
var averageStudentGrades = averageGrade(arr: students)
print(averageStudentGrades)

