import Cocoa

class Animal {
    let legs = 4
}

class Dog: Animal {
    func speak() {
        print("The dog is barking")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi is barking")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle is barking")
    }
}

class Cat: Animal {
    var isTame = true
    
    func speak() {
        print("Cat is meowing")
    }
    
    init(isTame: Bool = true) {
        self.isTame = isTame
    }
}

class Persian: Cat {
    override func speak() {
        print("Persian is meowing")
    }
}

class Lion: Cat {
    override func speak() {
        print("Lion is roaring")
    }
    
    override init(isTame: Bool) {
        super.init(isTame: isTame)
    }
}

let dog = Dog()
dog.speak()

let corgi = Corgi()
corgi.speak()

let poodle = Poodle()
poodle.speak()

let cat = Cat()
cat.speak()

let persian = Persian()
persian.speak()

let lion = Lion(isTame: false)
lion.speak()

