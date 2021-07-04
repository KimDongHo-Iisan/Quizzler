
struct Town {
    let name = "Angelaland"
    var citizens = ["Angela" , "Jack"]
    var resources = ["Grain" : 100, "Ore": 42, "Wool" : 75]

    // 함수와 메소드는 동일한 개념이다. 하지만, 차이점은 메소드는 구조체와 클래스 내부에 정의 되어서 사용된다는 점과, 함수는 일종의 독립형으로 활동한다는 차이점이 있다.
    func fortify() {
        print("Defences increased!")
    }
}

var myTown = Town() // myTown에 Town 구조체의 속성을 복사

print(myTown.citizens) // 이렇게 Town의 속성인 citizens를 myTown에서 사용할수 있음.
print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain.")

myTown.citizens.append("keaun") // 이렇게 추가도 가능하다.
print(myTown.citizens.count)

myTown.fortify()

