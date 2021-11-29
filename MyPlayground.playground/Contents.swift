import UIKit

class Animal{
    var name: String
    var health = 100
    
    init(name: String){
        self.name = name
    }
    
    func displayHealth(){
        print("The heath of \(self.name) =\(self.health)")
    }
}


class Cat: Animal{
    
    func growl(){
        print("Rawr!")
    }
    
    func changeCatHealth(){
        self.health = 150
    }
    
    func run(){
        print("Running")
        self.health -= 10
    }
}


class Cheetah: Cat{
    override func run() {
        if self.health >= 50{
            print("Running Fast")
            self.health -= 50
        }
    }
    
    func sleep() {
        if self.health + 50 > 200{
            return
        }
        self.health += 50
    }
}


class Lion: Cat{
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
    }
    
    override func changeCatHealth() {
        self.health = 200
    }
}


var cheetah = Cheetah(name: "Zootopia")

for _ in 1...4{
    cheetah.run()
}

cheetah.displayHealth()

var lion = Lion(name: "ٍSimba")

for _ in 1...3{
    lion.run()
}

lion.growl()

