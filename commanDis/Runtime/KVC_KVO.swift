//
//  start.swift
//  commanDis
//
//  Created by Anna Udobnaja on 08.03.2024.
//

import Foundation


class Person: NSObject {
    @objc dynamic var name: String // set private and use KVC and KeyPath
    @objc dynamic var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Observer: NSObject {
    var observation: NSKeyValueObservation?

    func startObserving(person: Person) {
//        observation = person.observe(\.name, options: [.new]) { (_, change) in
//            if let newName = change.newValue {
//                print("Person's name changed to \(newName)")
//            }
//        }

//        observation = person.observe(\.name) { (h, change) in
//            if let newName = change.newValue {
//                print("Person's name changed to \(newName)")
//            }
//        }
    }
}

class CombinedObserver: NSObject {
    var observation: NSKeyValueObservation?

    func startObserving(person: Person) {

//        print("Observing KeyPath")
//        observation = person.observe(\.age, options: [.new]) { (_, change) in
//            if let newAge = change.newValue {
//                print("Person's age changed to \(newAge)")
//            }
//        }

        print("Observing KVC")
        person.addObserver(self, forKeyPath: "age", options: [.old, .new], context: nil)
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
            print("pu")
            if keyPath == "age" {
                print("New Value forKeyPath Age", change?[.newKey])
            }
        }

    func updateAgeUsingKVC(person: Person, newAge: Int) {
        person.setValue(newAge, forKey: "age")
        print("Updated age using KVC: \(person.age)")
    }
}

func kvc() {
    let person = Person(name: "John Doe", age: 30)

    let observer = Observer()
    observer.startObserving(person: person)

    // Using KVC to get the value
    let personName = person.value(forKey: "name") as? String
    print("Person's name: \(personName ?? "")")

    person.setValue("Шишкабой", forKey: "name")

    let personName_1 = person.value(forKey: "name") as? String
    print("Person's name: \(personName_1 ?? "")")

    // Using KVC to set the value
    person.setValue("Jane Doe", forKey: "name")
    print("Updated name: \(person.name)")

    // примеры с прайватом и с кейпасом
    let keyPath = \Person.name

    let personNameUsingKeyPath = person[keyPath: keyPath]
    print("Person's name using key path: \(personNameUsingKeyPath)")

    person.name = "Jane Doe"


    let person_1 = Person(name: "John Doe", age: 30)
    let combinedObserver = CombinedObserver()

    combinedObserver.startObserving(person: person_1)
    combinedObserver.updateAgeUsingKVC(person: person_1, newAge: 35)


}

struct Person_1: Identifiable {
    static let idKey = \Person_1.socialSecurityNumber
    var socialSecurityNumber: String
    var name: String
}

struct Book: Identifiable {
    static let idKey = \Book.isbn
    var isbn: String
    var title: String
}


protocol Identifiable {
    associatedtype ID
    static var idKey: WritableKeyPath<Self, ID> { get }
}


func printID<T: Identifiable>(thing: T) {
    print(thing[keyPath: T.idKey])
}


