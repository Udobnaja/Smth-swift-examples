
import Foundation

/*
 Key points:
 It May look like a loop
 and the necessity for a call to be made only once.
 Otherwise, a substitution occurs with each call.
 + @objc dynamic
*/

//protocol A {
//    func drinkWater()
//    func drinkWine()
//}
// : A

class MySwizzle{
    init() {
        swizzleDrinking()
    }

    private func swizzleDrinking() {
//        print(\MySwizzle.drinkWater)
        let cls = MySwizzle.self

        let originalSelector = #selector(self.drinkWater)
        let swizzledSelector = #selector(self.drinkWine)

        guard
            let originalMethod = class_getInstanceMethod(cls, originalSelector),
            let swizzledMethod = class_getInstanceMethod(cls, swizzledSelector)
        else { return }

        method_exchangeImplementations(originalMethod, swizzledMethod)
    }

    @objc dynamic func drinkWater() {
        print("Я пью воду")
    }

    @objc dynamic func drinkWine() {
//        drinkWine()
        print("Я пью вино")
    }
}
