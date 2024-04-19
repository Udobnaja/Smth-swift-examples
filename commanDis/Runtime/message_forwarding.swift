//
//  message_forwarding.swift
//  commanDis
//
//  Created by Anna Udobnaja on 20.03.2024.
//

import Foundation

@objc protocol MessageHandler: AnyObject {
    func handleMessage()
}

class Forwarder: NSObject, MessageHandler {
    func handleMessage() {
        print("Message has been forwarded to Forwarder and handled")
    }
}

class Receiver: NSObject {
    lazy var forwarder = Forwarder()

    // If a selector implementation isn't found, it proceeds to the forwardingTarget method.
    override func forwardingTarget(for aSelector: Selector) -> Any? {
        if forwarder.responds(to: aSelector) {
            return forwarder
        }
//        not elegant way
//        if aSelector == #selector(MessageHandler.handleMessage) {
//            return forwarder
//        }
        return super.forwardingTarget(for: aSelector)
    }
}

//let receiver = Receiver()
//
//receiver.perform(#selector(MessageHandler.handleMessage))

