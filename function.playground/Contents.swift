//
func greeting1(){
    print("hello")
}

//입력값이 있는 함수
func greeting2(name: String){
    print("Hello \(name)")
}

//입력값과 출력값이 모두 있는 함수. -> 입력값을 정해줄수도 있다.
func greeting3(name: String) -> Bool {
    if name == "Angela" || name == "Jack" {
        return true
    } else {
        return false
    }
}
//이렇게 변수를 할당해서, 변수 안에 함수를 넣어서 값을 출력시킬수도 있다.
var doorShouldOpen = greeting3(name: "Angela") //이 변수의 출력값은 bool이다.

