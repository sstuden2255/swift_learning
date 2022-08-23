import Cocoa

class Animal {
    var numLegs: Int
    init(numLegs: Int) {
        self.numLegs = numLegs
    }
}

class Dog: Animal {
    init() {
        super.init(numLegs: 4)
    }
    
    func speak() {
        print("Bark!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Ruff!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Grrr!")
    }
}

class Cat: Animal {
    let isTame: Bool
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(numLegs: 4)
    }
    
    func speak() {
        if self.isTame {
            print("Meoww")
        } else {
            print("Raaow raawwowow")
        }
    }
}


var dog1 = Dog()
dog1.speak()

var poodle1 = Poodle()
poodle1.speak()

var corgi1 = Corgi()
corgi1.speak()

var cat1 = Cat(isTame: true)
cat1.speak()
