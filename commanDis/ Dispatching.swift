//
//  2.swift
//  commanDis
//
//  Created by Anna Udobnaja on 07.03.2024.
//

import Foundation

//protocol Main {
//    func smth()
//}
//
//extension Main {
//    func smth() {
//        print("from Protocol")
//    }
//}
//
//class example: Main {
//    func smth() {
//        print("from class")
//    }
//}
//
//let callExample: Main = example()

//callExample.smth()

// -------------------------------------

protocol Shape {
    func draw()
}

extension Shape {
    func draw() {
        print("Shape")
    }
    func area() {
        print("Shape")
    }
}

class Circle: Shape {
    func draw() {
        print("Circle")
    }
    func area() {
        print("Circle")
    }
}

let circle: Shape = Circle()
//circle.draw() 
//circle.area()

// -------------------------------------

protocol TheProtocol {
    func method()
}

extension TheProtocol {
    func method() {
        print("in TheProtocol")
    }
}

struct TheStruct: TheProtocol {
    func method() {
        print("in TheStruct")
    }
}

let theStruct = TheStruct()
let theProtocol: TheProtocol = theStruct

//theStruct.method()
//theProtocol.method()

// -------------------------------------


protocol AbstractProtocol {
}

extension AbstractProtocol {
    func method() {
        print("in TheProtocol")
    }
}

struct TStruct: AbstractProtocol {
    func method() {
        print("in TheStruct")
    }
}

let one: TStruct = TStruct()
let two: AbstractProtocol = one

//one.method()
//two.method()

// -------------------------------------

//  What kind of dispatching is this?

 final class FinalClass {
    func smth() {

    }
 }

// -------------------------------------

// * What kind of dispatching is this?

class TODO {
    func superFunc() { }
    private func privatFunk() {}
    final func wtfFunk() { }
}

extension TODO {
    func extensionFunc() {}
}

// -------------------------------------

//protocol ChatProvider {
//    func sendMessage()
//}
//
//extension ChatProvider {
//    func sendMessage() {
//        print("Message")
//    }
//}
//
//class Messenger: ChatProvider {}
//
//class LoudMessenger: Messenger {
//    func sendMessage() {
//        print("MESSAGE!")
//    }
//}
//
//func sendMessageFrom(messenger: ChatProvider) {
//    messenger.sendMessage()
//}
//
//let loudMessenger = LoudMessenger()

//loudMessenger.sendMessage()
//sendMessageFrom(messenger: loudMessenger)


protocol Main {
    func smth()
}

extension Main {
    func smth() {
        print("from Protocol")
    }
}

class example: Main {
    func smth() {
        print("from class")
    }
}

let callExample: Main = example()


//callExample.smth()

// -------------------------------------



protocol ChatProvider {
    func sendMessage()
}

extension ChatProvider {
    func sendMessage() {
        print("Message")
    }
}

class Messenger: ChatProvider {}

class LoudMessenger: Messenger {
    func sendMessage() {
        print("MESSAGE!")
    }
}

func sendMessageFrom(messenger: ChatProvider) {
    messenger.sendMessage()
}

let loudMessenger = LoudMessenger()

//loudMessenger.sendMessage()
//sendMessageFrom(messenger: loudMessenger)


