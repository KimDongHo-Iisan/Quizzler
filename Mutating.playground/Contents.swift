
struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    /*
     func harvestRice(){
     resources["Rice"] = 100
     }
     */
    //이렇게 적으면 변경할수 없다는 에러가 발생한다. 이유는 resource는 사실 self.resource에서 self가 생략되어 있는 것이기 때문이다. self는 할당되는 순간 자동으로 let 키워드로 생성되는 특징을 가지고 있다. 해서 변경할수 없다는 에러가 발생하는 것이다. 그렇기에 이를 해결하기 위해선.
    
    //mutaiting 키워드를 추가해주어야한다.
    mutating func harvestRice(){
    resources["Rice"] = 100
    }
    //위 메소드는 구조의 속성을 변경할수 있는 메소드이다.
    
    //이 메소드는 구조체에 대해 아무것도 변경하지 않는 메소드
    func fortify() {
        print("Defences increased!")
    }
}

var myTown = Town(name: "Angelaland", citizens: ["angela"], resources: ["Wool" : 75])

myTown.citizens.append("hello")
