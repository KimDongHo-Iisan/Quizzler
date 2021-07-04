
struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    //이니셜라이저를 통해 청사진에 있던 속성들을 객체로 끄집어 내어 생성하는 것이다.
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name // self를 붙이는 이유: 우리는 name = name이 Town 구조체의 속성인 name을 의미 하는것이라고 생각하지만, 컴퓨터는 그리 생각하지 못한다 그래서 지정을 해줘야 한다.
        self.citizens = citizens
        self.resources = resources
    }

    func fortify() {
        print("Defences increased!")
    }
}


var anotherTown = Town(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconuts": 100])

var ghostTown = Town(name: "Ghost", citizens: [], resources: ["Tom":1])

anotherTown.citizens.append("Willy")
ghostTown.fortify()

// 이니셜라이저를 통해, 속성은 공유하지만, 전혀 다른 객체들을 만들수 있다는것을 알수 있다. 
