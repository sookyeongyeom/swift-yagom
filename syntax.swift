import UIKit
import Swift

//상수
//let 이름: 타입 = 값

//변수
//var 이름: 타입 = 값

//값의 타입이 명확하다면 타입 생략 가능
//let 이름 = 값
//var 이름 = 값

let constant: String = "차후에 변경 불가능 상수 let"
var variable: String = "차후 변경 가능한 변수 var"

variable = "변수는 다른 값 할당 가능"
//constant = "상수는 변경 불가" 오류발생

//상수 선언 후에 나중에 값 할당 가능

//나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 함
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

//선언 후 첫 할당
sum = inputA + inputB

//변수도 물론 차후 할당 가능
var nickName: String

nickName = "choco"

//변수는 차후 다시 다른 값을 할당해도 문제 없음
nickName = "minmin"




//Swift의 기본 데이터 타입
//Bool Int UInt Float Double Character String

//Bool
var someBool: Bool = true
someBool = false

//Int
var someInt: Int = -100
//someInt = 100.1 오류발생

//UInt : 양의 정수
var someUInt: UInt = 100
//someUInt = -100 오류발생

//Float
var someFloat: Float = 3.14
someFloat = 3

//Double
var someDouble: Double = 3.14
someDouble = 3
//someDouble = someFloat 이것도 오류 발생

//Character
var someCharacter: Character = "A" //이모티콘도 가능
someCharacter = "가"
//someCharacter = "하하" 오류 발생

//String
var someString: String = "하하하"
someString = someString + " 웃으면 복이와요!"
print(someString)
//someString = someCharacter 이것도 오류 발생




//Any AnyObject nil

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */

//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능"
someAny = 122.12
//let someDouble: Double = someAny 오류 발생

//MARK: - AnyObject
class someClass {}
var someAnyObject: AnyObject = someClass()
//someAnyObject = 122.12 오류발생

//Mark: -nil
//someAny = nil Any에 빈값은 할당 불가
//someAnyObject = nil 역시 빈값 할당 불가




//컬렉션 타입
//Array Dictionary Set

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */

//MARK: - Array

//빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//integers.append(101.1) 오류 발생

integers.contains(100)
integers.contains(99)

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

integers.count

//Array<Double>과 [Double]은 동일한 표현
//빈 Double Array 생성
var doubles: Array<Double> = [Double]()

//빈 String Array 생성
var strings: [String] = [String]()

//빈 Character Array 생성
//[]는 새로운 빈 Array
var characters: [Character] = []

//let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1,2,3]

//immutableArray.append(4) 오류발생
//immutableArray.remove(at: 0) 오류발생

//MARK: - Dictionary
//Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDict: Dictionary<String, Any> = [String: Any]()
anyDict["someKey"] = "value"
anyDict["anotherKey"] = 100
anyDict

anyDict["someKey"] = "dictionary"
anyDict

anyDict.removeValue(forKey: "anotherKey")
anyDict["someKey"] = nil
anyDict

let emptyDict: [String: String] = [:]
let initDict: [String: String] = ["name": "choco", "gender": "female"]

//let someValue: String = initDict["name"] 오류발생
//딕셔너리의 키에 해당되는 값이 있을 수도 있고 없을 수도 없기 때문에 할당 불가

//MARK: - Set
//내부에 중복된 값이 없음을 보장함
var intSet: Set<Int> = Set<Int>()
intSet.insert(1)
intSet.insert(100)
intSet.insert(99)
intSet.insert(99)
intSet.insert(99)
intSet

intSet.contains(1)
intSet.contains(2)

intSet.remove(100)
intSet.removeFirst()

intSet
intSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB) //합집합

let sortedUnion: [Int] = union.sorted()
let sortedUnionReversed: [Int] = union.sorted().reversed()

let intersection: Set<Int> = setA.intersection(setB) //교집합

let subtracting: Set<Int> = setA.subtracting(setB) //차집합




//함수
//MARK: - 함수의 선언

//MARK: - 함수선언의 기본 형태
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ..) -> 반환타입 {
//    함수 구현부
//    return 반환값
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}

sum(a: 3, b: 4)

//MARK: - 반환값이 없는 함수
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ..) -> Void {
//    함수 구현부
//    return
//}

func printMyName(name: String) -> Void {
    print(name)
}

//또는 아예 반환 부분 생략
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ..) {
//    함수 구현부
//    return
//}

func printYourName(name: String) {
    print(name)
}

//MARK: - 매개변수가 없는 함수
//func 함수이름() -> 반환타입 {
//    함수 구현부
//    return 반환값
//}

func maximumIntValue() -> Int {
    return Int.max
}

//MARK: - 매개변수와 반환값이 없는 함수
//func 함수이름() -> Void {
//    함수 구현부
//    return
//}

func hello() -> Void {
    print("Hello")
}

//또는 아예 반환 부분 생략
//func 함수이름() {
//    함수 구현부
//    return
//}

func bye() { print("bye") }

//MARK: - 함수의 호출
sum(a: 3, b: 5)
printMyName(name: "choco")
printYourName(name: "minmin")
maximumIntValue()
hello()
bye()



//MARK: - 매개변수 기본값
//기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋음
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수기본값 ...) -> 반환타입 {
//    함수 구현부
//    return 반환값
//}

func greeting(friend: String, me: String = "choco") {
    print("Hi \(friend)! I'm \(me)")
}

//매개변수 기본값을 가지는 매개변수는 생략할 수 있습니다
greeting(friend: "minmin")
greeting(friend: "ponyo", me: "cho")

//MARK: - 전달인자 레이블
//전달인자 레이블은 함수를 호출할 때
//매개변수의 역할을 좀 더 명확하게 하거나
//함수 사용자의 입장에서 표현하고자 할 때 사용합니다
//func 함수이름(전달인자레이블 매개변수1이름: 매개변수1타입, 전달인자레이블 매개변수2이름: 매개변수2타입 ..) -> 반환타입 {
//    함수 구현부
//    return
//}

//함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용해야 합니다
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

//함수를 호출할 때에는 전달인자 레이블을 사용해야 합니다
greeting(to: "ponyo", from: "choco")

//MARK: - 가변 매개변수
//전달 받을 값의 개수를 알기 어려울 때 사용할 수 있습니다
//가변 매개변수는 함수 당 하나만 가질 수 있습니다
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입...) -> 반환타입 {
//    함수 구현부
//    return
//}

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Nice to meet you, \(friends)! I'm \(me)!"
}

print(sayHelloToFriends(me: "choco", friends: "min", "ponyo"))
print(sayHelloToFriends(me: "choco"))

/*
 위에 설명한 함수의 다양한 모양은 모두 섞어서 사용 가능합니다
 */

//MARK: - 데이터 타입으로서의 함수

//스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어입니다
//스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고
//매개변수를 통해 전달할 수도 있습니다

//MARK: - 함수의 타입표현
//반환타입을 생략할 수 없습니다 *함수가 타입으로 사용되는 경우입니다*
//(매개변수1타입, 매개변수2타입 ..) -> 반환타입

var someFunc: (String, String) -> Void = greeting(to:from:)
someFunc("min", "cho")

someFunc = greeting(friend:me:)
someFunc("min", "cho")

//타입이 다른 함수는 할당할 수 없습니다
//someFunc = sayHelloToFriends(me:friends:) 오류 발생

func runAnother(function: (String, String) -> Void) {
    function("minmin", "chocho")
}

runAnother(function: greeting(friend:me:))
runAnother(function: someFunc)



//조건문

let someInteger = 100

//MARK: - if-else

//if condition {
//    statements
//} else if condition {
//    statements
//} else {
//    statements
//}

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}

//스위프트의 조건에는 항상 Bool 타입이 들어와야합니다
//someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
//컴파일 오류가 발생합니다
//if someInteger {} 오류 발생

//MARK: - switch

//switch value {
//case pattern:
//    code
//default:
//    code
//}

//범위 연산자를 활용하면 더욱 쉽고 유용합니다
switch someInteger {
case 0:
    print("zero") //break 자동으로 걸림 : 싫을 시 -> fallthrough 입력
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default: //무조건 default값 주어야 함
    print("unknown")
}

//정수 외의 대부분의 기본 타입을 사용할 수 있습니다
switch "choco" {
case "min":
    print("min")
case "ponyo":
    print("ponyo")
case "choco":
    print("choco!!")
default:
    print("unknown")
}

//반복문

var ints = [1, 2, 3]
let people = ["choco": 10, "min":15, "ponyo": 12]

//MARK: - for-in

//for item in items {
//    code
//}

for integer in ints {
    print(integer)
}

//Dictionary의 item은 key와 value로 구성된 튜플 타입입니다
for (name, age) in people {
    print("\(name): \(age)")
}

//MARK: - while

//while condition {
//    code
//}

while ints.count > 1 {
    ints.removeLast()
}

//MARK: - repeat-while
//타언어의 do while과 유사

//repeat {
//    code
//} while condition

repeat {
    ints.removeLast()
} while ints.count > 0


//옵셔널 : 값이 있을 수도, 없을 수도 있음

//옵셔널 값 추출
//1) 옵셔널 바인딩 : Knock해서 정중하게 꺼내오기
//2) 옵셔널 강제추출 : Force Unwrapping 보호막을 강제로 깨부시고 갖고 나오기

//1) 옵셔널 바인딩
//if-let 방식 : 한꺼번에 여러개도 가능

func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}
//name 상수는 if-let 구문 내에서만 사용가능합니다

var choName: String? = "choco"
var yourName: String? = nil

if let name = choName, let friend = yourName {
    print("\(name) and \(friend)")
}
//yourName이 nil이기 때문에 실행되지 않음

yourName = "min"

if let name = choName, let friend = yourName {
    print("\(name) and \(friend)")
}
//choco and min

//2) 옵셔널 강제 추출
var poName: String? = "ponyo"
printName(poName!) //ponyo
poName = nil
//print(poName!) : 강제추출 시 값이 없으므로 런타임 오류 발생

//2-1) 선언 시 미리 벗겨놓기
var minName: String! = nil
//printName(minName) : nil 값이 전달되기 때문에 런타임 오류 발생


//구조체

//MARK: - 정의

//struct 이름 {
//    /* 구현부 */
//}

//MARK: - 프로퍼티 및 메서드

struct Sample {
    var mutableProperty: Int = 100 //가변 프로퍼티
    let immutableProperty: Int = 100 //불변 프로퍼티
    
    static var typeProperty: Int = 100 //타입 프로퍼티
    
    //인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    //타입 메서드
    static func typeMethod() {
        print("type method")
    }
}

//MARK: - 구조체 사용

//가변 인스턴스
var mutable: Sample = Sample()

mutable.mutableProperty = 200
//mutable.immutableProperty = 200

//불변 인스턴스
let immutable: Sample = Sample()

//immutable.mutableProperty = 300
//immutable.immutableProperty = 300

//타입 프로퍼티 및 메서드 : Sample이라는 타입 본인이 사용 가능
Sample.typeProperty = 300
Sample.typeMethod()

//mutable.typeProperty 사용 불가
//mutable.typeMethod() 사용 불가

//MARK: - 학생 구조체

struct Student {
    var name: String = "unknown"
    var classes: String = "Swift"
    
    static func selfIntroduce() {
        print("학생타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.classes)반 \(name)입니다")
    }
}

Student.selfIntroduce() //타입 본인이 사용 가능

//가변 인스턴스
var choco: Student = Student()
choco.name = "choco"
choco.classes = "스위프트"
choco.selfIntroduce()

//불변 인스턴스는 프로퍼티 값 변경 불가
let ponyo: Student = Student()
//ponyo.name = "ponyo" : 컴파일 오류 발생
ponyo.selfIntroduce()

//클래스
//클래스는 참조 타입 <-> 구조체는 값 타입

//MARK: - 정의

class 이름 {
    /* 구현부 */
}

//MARK: - 프로퍼티 및 메서드

class SampleClass {
    var mutableProperty: Int = 100 //가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 //타입 프로퍼티
    
    //인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    //타입 메서드
    //재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    //재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
}

//MARK: - 클래스 사용

var mutableReference: SampleClass = SampleClass()

mutableReference.mutableProperty = 200
//mutableReference.immutableProperty = 200

let immutableReference: SampleClass = SampleClass()

immutableReference.mutableProperty = 200 /* 특이사항 : 불변 인스턴스의 가변 프로퍼티 변경 가능! */
//immutableReference.immutableProperty = 200

//타입 프로퍼티 및 메서드
SampleClass.typeProperty = 300
SampleClass.typeMethod() //type method

//mutableReference.typeProperty 사용 불가
//mutableReference.typeMethod() 사용 불가

//MARK: - 학생 클래스

class StudentClass {
    var name: String = "unknown"
    var classes: String = "Swift"
    
    class func selfIntroduce(){
        print("학생타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.classes)반 \(name)입니다.")
    }
}

StudentClass.selfIntroduce() //클래스 본인이 사용 가능

var popo: StudentClass = StudentClass()
popo.name = "popo"
popo.classes = "스위프트"
popo.selfIntroduce()

let nyonyo: StudentClass = StudentClass()
nyonyo.name = "nyonyo" /* 특이사항 : 불변 인스턴스의 가변 프로퍼티 변경 가능 */
nyonyo.selfIntroduce()


//열거형

//MARK: - 정의

//enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의합니다
//각 case는 소문자 카멜케이스로 정의합니다
//각 case는 그 자체가 고유의 값입니다

//enum 이름 {
//    case 이름1
//    case 이름2
//    case 이름3, 이름4, 이름5
//    ...
//}

//MARK: - 열거형 사용

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun //한 줄에 나열 가능
}

var day: Weekday = Weekday.mon
day = .tue

print(day)

switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다")
case Weekday.fri:
    print("불금 파티!!")
case .sat, .sun:
    print("신나는 주말!!")
}
//열거형의 모든 경우를 case로 올리는 경우, default 구현 안해도 됨


//MARK: - 원시값

//C 언어의 enum처럼 정수값을 가질 수도 있습니다
//rawValue를 사용하면 됩니다
//case별로 각각 다른 값을 가져야합니다

enum Fruit: Int {
    case apple = 0 // = 0 부분 안써도 무방, 다른 수로 시작하고 싶을 시 그 수를 적기, 아래로 가면서 자동으로 1씩 증가
    case grape
    case peach
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")

//정수 타입 뿐만 아니라
//Hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있습니다

enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("School.middle.rawValue == \(School.middle.rawValue)")

print("School.university.rawValue == \(School.university.rawValue)")


//MARK: - 원시값을 통한 초기화

//rawValue를 통해 초기화 할 수 있습니다
//rawValue가 case에 해당하지 않을 수 있으므로
//rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입입니다

//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
}


//MARK: - 메서드

enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄~")
        case .jun, .jul, .aug:
            print("여름 더워요~")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절!")
        case .dec, .jan, .feb:
            print("추운 겨울입니다")
        }
    }
}

Month.mar.printMessage()


//클래스, 구조체/열거형 비교

//MARK: - Class vs Struct/Enum

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property : \(firstStructInstance.property)") //1
print("second struct instance property : \(secondStructInstance.property)") //2

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property)") //2
print("second class reference property : \(secondClassReference.property)") //2

//구조체 값 복사 예시

struct SomeStruct {
    var someProperty: String = "Property"
}

var someStructInstance: SomeStruct = SomeStruct()

func someFunction(structInstance: SomeStruct) {
    var localVar: SomeStruct = structInstance
    localVar.someProperty = "ABC"
}

someFunction(structInstance: someStructInstance)
print(someStructInstance.someProperty) //Property

//클래스 값 참조 예시

class SomeClass {
    var someProperty: String = "Property"
}

var someClassInstance: SomeClass = SomeClass()

func someFunction(classInstance: SomeClass) {
    let localVar: SomeClass = classInstance
    localVar.someProperty = "ABC"
}

someFunction(classInstance: someClassInstance)
print(someClassInstance.someProperty) //ABC


//클로저

//코드의 블럭
//일급 시민 (first-citizen)
//변수, 상수 등으로 저장, 전달인자로 전달이 가능
//함수 : 이름이 있는 클로저


//MARK: - 정의

//{ (매개변수 목록) -> 반환타입 in
//    실행 코드
//}

//함수를 사용한다면
func sumFunc(a: Int, b: Int) -> Int {
    return a + b
}

var sumResult: Int = sumFunc(a: 1, b: 2)
print(sumResult)

//클로저의 사용
var sums: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

sumResult = sums(1, 2)
print(sumResult)

//함수는 클로저의 일종이므로
//sums 변수에는 당연히 함수도 할당할 수 있습니다
sums = sumFunc(a:b:)

sumResult = sums(1, 2)
print(sumResult)


//MARK: - 함수의 전달인자로서의 클로저

let add: (Int, Int) -> (Int)
add = { (a: Int, b: Int) -> Int in
    return a + b
}

let substract: (Int, Int) -> (Int)
substract = { (a: Int, b: Int) -> Int in
    return a - b
}

let divide: (Int, Int) -> (Int)
divide = { (a: Int, b: Int) -> Int in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)
print(calculated)

calculated = calculate(a: 50, b: 10, method: substract)
print(calculated)

calculated = calculate(a: 50, b: 10, method: divide)
print(calculated)

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})
print(calculated)


//클로저 고급

/*
 후행 클로저
 반환타입 생략
 단축 인자이름
 암시적 반환 표현
 */

func calc(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var result: Int


//MARK: - 후행 클로저
//클로저가 함수의 마지막 전달인자라면
//마지막 매개변수 이름을 생략한 후
//함수 소괄호 외부에 클로저를 구현할 수 있습니다

result = calc(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}
print(result)


//MARK: - 반환타입 생략
//calc 함수의 method 매개변수는
//Int 타입을 반환할 것이라는 사실을 컴파일러도 알기 때문에
//굳이 클로저에서 반환타입을 명시해주지 않아도 됩니다
//대신 in 키워드는 생략할 수 없습니다

result = calc(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
})
print(result)

//후행 클로저와 함께 사용할 수도 있습니다
result = calc(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}


//MARK: - 단축 인자이름
//클로저의 매개변수 이름이 굳이 불필요하다면 단축 인자이름을 활용할 수 있습니다
//단축 인자이름은 클로저의 매개변수의 순서대로 $0, $1... 처럼 표현합니다

result = calc(a: 10, b: 10, method: {
    return $0 + $1
})
print(result)

//당연히 후행 클로저와 함께 사용할 수 있습니다
result = calc(a: 10, b: 10) {
    return $0 + $1
}
print(result)


//MARK: - 암시적 반환 표현
result = calc(a: 10, b: 10) {
    $0 + $1
}
print(result)

//간결하게 한 줄로 표현해 줄 수도 있습니다
result = calc(a: 10, b: 10) { $0 + $1 }
print(result)


//MARK: - Before & After
//축약하지 않은 클로저 문법과 축약 후의 문법 비교

result = calc(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
})
print(result)

result = calc(a: 10, b: 10) { $0 + $1 }
print(result)


//프로퍼티

/*
 저장 프로퍼티 (stored property)
 연산 프로퍼티 (computed property)
 인스턴스 프로퍼티 (instance property)
 타입 프로퍼티 (type property)
 */

//프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있습니다
//다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있습니다
//연산 프로퍼티는 var로만 선언할 수 있습니다


//MARK: - 정의

struct Pupil {
    //인스턴스 저장 프로퍼티
    var name: String = ""
    var classes: String = "Swift"
    var koreanAge: Int = 0
    
    //인스턴스 연산 프로퍼티
    var westernAge: Int {
        get {
            return koreanAge - 1
        }
        
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    
    //타입 저장 프로퍼티 : 타입과 연관돼서 저장이 되어야 할 프로퍼티
    static var typeDescription: String = "학생"
    
    /*
    //인스턴스 메서드
    func selfIntroduce() {
        print("저는 \(self.classes)반 \(name)입니다")
    }
     */
    
    //읽기전용 인스턴스 연산 프로퍼티
    var selfIntroduction: String {
        get {
            return "저는 \(self.classes)반 \(name)입니다"
        }
    }
    
    /*
    //타입 메서드
    static func selfIntroduce() {
        print("학생타입입니다")
    }
     */
    
    //읽기전용 타입 연산 프로퍼티
    //읽기전용에서는 get을 생략할 수 있습니다
    static var selfIntroduction: String {
        return "학생타입입니다"
    }
}


//MARK: - 사용

//타입 연산 프로퍼티 사용
print(Pupil.selfIntroduction)

//인스턴스 생성
var cho: Pupil = Pupil()
cho.koreanAge = 24

//인스턴스 저장 프로퍼티 사용
cho.name = "cho"
print(cho.name)

//인스턴스 연산 프로퍼티 사용
print(cho.selfIntroduction)
print("제 한국나이는 \(cho.koreanAge)살이고, 미쿡나이는 \(cho.westernAge)살입니다.")


//MARK: - 응용

struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket = Money()

moneyInMyPocket.won = 11000
print(moneyInMyPocket.won)

moneyInMyPocket.dollar = 12
print(moneyInMyPocket.won)


//MARK: - 지역변수, 전역변수

//저장 프로퍼티와 연산 프로퍼티의 기능은
//함수, 메서드, 클로저, 타입 등의 외부에 위치한
//지역/전역 변수에도 모두 사용 가능합니다

var a: Int = 100
var b: Int = 200
var sumA: Int {
    return a + b
}

print(sumA)


//프로퍼티 감시자

//프로퍼티 감시자를 사용하면 프로퍼티 값이 변경될 때 원하는 동작을 수행할 수 있습니다


//MARK: - 정의

struct Moneys {
    //프로퍼티 감시자 사용
    var currencyRate: Double = 1100 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다")
        }
        
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다")
        }
    }
    
    //프로퍼티 감시자 사용
    var dollar: Double = 0 {
        //willSet의 암시적 매개변수 이름 newValue
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다")
        }
        
        //didSet의 암시적 매개변수 이름 oldValue
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다")
        }
    }
    
    //연산 프로퍼티
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
        
        /* 프로퍼티 감시자와 연산 프로퍼티 기능을 동시에 사용할 수 없습니다
         willSet {
         
         }
         */
    }
}


//MARK: - 사용

var moneyInMyPockets = Moneys()

//환율이 1100.0에서 1150.0으로 변경될 예정입니다
moneyInMyPockets.currencyRate = 1150
//환율이 1100.0에서 1150.0으로 변경되었습니다

//0.0달러에서 10.0달러로 변경될 예정입니다
moneyInMyPockets.dollar = 10
//0.0달러에서 10.0달러로 변경되었습니다

print(moneyInMyPockets.won)
//11500.0

//프로퍼티 감시자의 기능은
//함수, 메서드, 클로저, 타입 등의 외부에 위치한
//지역/전역 변수에도 모두 사용 가능합니다

var c: Int = 100 {
    willSet {
        print("\(c)에서 \(newValue)로 변경될 예정입니다")
    }
    
    didSet {
        print("\(oldValue)에서 \(c)로 변경되었습니다")
    }
}

//100에서 200으로 변경될 예정입니다
c = 200
//100에서 200으로 변경되었습니다


//상속

//스위프트의 상속은 클래스, 프로토콜 등에서 가능합니다
//열거형, 구조체는 상속이 불가능합니다
//스위프트는 다중상속을 지원하지 않습니다
//이번 파트에서는 클래스의 상속에 대해서 알아봅니다


//MARK: - 클래스의 상속과 재정의

//class 이름: 상속받을 클래스 이름 {
//    /* 구현부 */
//}

class Person {
    var name: String = ""
    
    func selfIntroduce() {
        print("저는 \(name)입니다")
    }
    
    //final 키워드를 사용하여 재정의를 방지할 수 있습니다
    final func sayHello() {
        print("hello")
    }
    
    //타입 메서드
    //재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    
    //재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
    
    //재정의 가능한 class 메서드라도
    //final 키워드를 사용하면 재정의 할 수 없습니다
    //메서드 앞의 'static'과 'final class'는 똑같은 역할을 합니다
    final class func finalClassMethod() {
        print("type method - final class")
    }
}

class Students: Person {
//    var name: String = ""
    var major: String = ""
    
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다")
        super.selfIntroduce() //부모클래스의 메서드 호출
    }
    
    override class func classMethod() {
        print("overriden type method - class")
    }
    
    //static을 사용한 타입 메서드를 재정의 할 수 없습니다
//    override static func typeMethod() { }
    
    //final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없습니다
//    override func sayHello() { }
//    override class func finalClassMethod() { }
}

let mongga: Person = Person()
let gomdol: Students = Students()

mongga.name = "mongga"
//mongga.major 사용 불가
gomdol.name = "gomdol"
gomdol.major = "Finance"

mongga.selfIntroduce()
//저는 mongga입니다

gomdol.selfIntroduce()
//저는 gomdol이고, 전공은 Finance 입니다
//저는 gomdol입니다

Person.classMethod()
//type method - class

Person.typeMethod()
//type method - static

Person.finalClassMethod()
//type method - final class

Students.classMethod()
//overriden type method - class

Students.typeMethod()
//type method - static

Students.finalClassMethod()
//type method - final class


//MARK: - 프로퍼티 기본값

//스위프트의 모든 인스턴스는 초기화와 동시에
//모든 프로퍼티에 유효한 값이 할당되어 있어야 합니다
//프로퍼티에 미리 기본값을 할당해두면
//인스턴스가 생성됨과 동시에 초기값을 지니게 됩니다

class PersonA {
    //모든 저장 프로퍼티에 기본값 할당
    var name: String = "unknown"
    var age: Int = 0
    var nickName: String = "nick"
}

let mama: PersonA = PersonA()
mama.name = "MyungShin"
mama.age = 57
mama.nickName = "mom"


//MARK: - 이니셜라이저

//프로퍼티 기본값을 지정하기 어려운 경우에는
//이니셜라이저를 통해
//인스턴스가 가져야 할 초기값을 전달할 수 있습니다

class PersonB {
    var name: String
    var age: Int
    var nickName: String
    
    //이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

let papa: PersonB = PersonB(name: "SeungWon", age: 61, nickName: "dad")
//let papa: PersonB = PersonB(name: "SeungWon", age: 61, nickName: "")


//MARK: - 프로퍼티의 초기값이 꼭 필요 없을 때
//옵셔널을 사용!

class PersonC {
    var name: String
    var age: Int
    var nickName: String? //옵셔널 사용
    
    convenience init(name: String, age: Int, nickName: String) {
        self.init(name: name, age: age) //미리 만들어둔 이니셜라이저 사용 가능
        self.nickName = nickName
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let sooKyeong: PersonC = PersonC(name: "sookyeong", age: 24)
let sooYeon: PersonC = PersonC(name: "sooYeon", age: 21, nickName: "ponyo")

//암시적 추출 옵셔널은
//인스턴스 사용에 꼭 필요하지만
//초기값을 할당하지 않고자 할 때 사용

class Kitten {
    var name: String
    var owner: PersonC!
    
    init(name: String) {
        self.name = name
    }
    
    func sleeping() {
        print("\(name)가 엄마 \(owner.name)과 낮잠을 잡니다")
    }
}

let mochi: Kitten = Kitten(name: "mochi")
//mochi.sleeping() : 엄마 없이는 오류 발생
mochi.owner = sooYeon
mochi.sleeping()


//MARK: - 실패가능한 이니셜라이저
//이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우
//인스턴스 생성에 실패할 수 있습니다
//인스턴스 생성에 실패하면 nil을 반환합니다
//그래서 실패가능한 이니셜라이저의 반환타입은 옵셔널 타입입니다

class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    
    //옵셔널 사용
    init?(name: String, age: Int) {
        if (0...120).contains(age) == false {
            return nil
        }
        
        if name.count == 0 {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}

//let MyungShin: PersonD = PersonD(name: "MyungShin", age: 57)
let myungShin: PersonD? = PersonD(name: "myungShin", age: 57)
let seungWon: PersonD? = PersonD(name: "seungWon", age: 123)
let freeYeon: PersonD? = PersonD(name: "", age: 21)

print(seungWon) //nil
print(freeYeon) //nil


//MARK: - 디이니셜라이저
//클래스 타입에만 구현 가능

//deinit은 클래스의 인스턴스가
//메모리에서 해제되는 시점에 호출됩니다
//인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있습니다

class PersonE {
    var name: String
    var pet : Kitten?
    var child: PersonC
    
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    
    deinit {
        if let petName = pet?.name {
            print("\(name)이 \(child.name)에게 \(petName)를 건네줍니다")
            self.pet?.owner = child
        }
    }
}

var soo: PersonE? = PersonE(name: "sooKyeong", child: sooYeon)
soo?.pet = mochi
soo = nil //soo 인스턴스가 더이상 필요없으므로 메모리에서 해제됩니다
//sooKyeong이 sooYeon에게 mochi를 건네줍니다


//옵셔널 체이닝

//옵셔널 체이닝은 옵셔널 요소 내부의 프로퍼티로
//또다시 옵셔널이 연속적으로 연결되는 경우 유용하게 사용할 수 있습니다

class Human {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var guards: Human?
    var owner: Human?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

let yagom: Human? = Human(name: "yagom")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Human? = Human(name: "superman")

//옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로
//결과 타입도 옵셔널입니다

//만약 우리집의 경비원의 직업이 궁금하다면..?

//옵셔널 체이닝을 사용하지 않는다면..
func guardsJob(owner: Human?) {
    if let owner = owner {
        if let home = owner.home {
            if let guards = home.guards {
                if let guardsJob = guards.job {
                    print("우리집 경비원의 직업은 \(guardsJob)입니다")
                }
            }
        }
    }
}

guardsJob(owner: yagom)

//옵셔널 체이닝을 사용한다면
func guardsJobWithOptionalChaining(owner: Human?) {
    if let guardsJob = owner?.home?.guards?.job {
        print("우리집 경비원의 직업은 \(guardsJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardsJobWithOptionalChaining(owner: yagom)
//우리집 경비원은 직업이 없어요

yagom?.home?.guards?.job //nil

yagom?.home = apart

yagom?.home //Optional(Apartment)
yagom?.home?.guards //nil

yagom?.home?.guards = superman

yagom?.home?.guards //Optional(Human)

yagom?.home?.guards?.name //superman
yagom?.home?.guards?.job //nil

yagom?.home?.guards?.job = "경비원"


//nil 병합 연산자 : 변수 = A ?? B
//A값이 nil 이라면 B값을 변수에 넣어달라는 뜻

var guardsJob: String

guardsJob = yagom?.home?.guards?.job ?? "슈퍼맨"
print(guardsJob) //경비원

yagom?.home?.guards?.job = nil

guardsJob = yagom?.home?.guards?.job ?? "슈퍼맨"
print(guardsJob) //슈퍼맨


//타입 캐스팅

//스위프트의 타입캐스팅은
//인스턴스의 타입을 확인하는 용도
//또는 클래스의 인스턴스를
//부모 혹은 자식 클래스의 타입으로 사용할 수 있는지
//확인하는 용도로 사용합니다
//is, as를 사용합니다

//타입 캐스팅을 위한 클래스 정의
class HumanBeing {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다")
    }
}

class Pupils: HumanBeing {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다")
    }
}

class UniversityPupils: Pupils {
    var major: String = ""
    func goToMT() {
        print("멤버십 트레이닝을 갑니다 신남!")
    }
}

var yeogom: HumanBeing = HumanBeing()
var hana: Pupils = Pupils()
var jason: UniversityPupils = UniversityPupils()

//MARK: - 타입 확인
//is를 사용하여 타입을 확인합니다

var results: Bool

results = yeogom is HumanBeing //true
results = yeogom is Pupils //false
results = yeogom is UniversityPupils //false

results = hana is HumanBeing //true
results = hana is Pupils //true
results = hana is UniversityPupils //false

results = jason is HumanBeing //true
results = jason is Pupils //true
results = jason is UniversityPupils //true

if yeogom is UniversityPupils {
    print("yeogom은 대학생입니다")
} else if yeogom is Pupils {
    print("yeogom은 학생입니다")
} else if yeogom is HumanBeing {
    print("yeogom은 사람입니다")
} //yeogom은 사람입니다

switch hana {
case is HumanBeing:
    print("hana는 사람입니다")
case is Pupils:
    print("hana는 학생입니다")
case is UniversityPupils:
    print("hana는 대학생입니다")
default:
    print("hana는 사람도, 학생도, 대학생도 아닙니다")
} //hana는 사람입니다

switch jason {
case is UniversityPupils:
    print("jason은 대학생입니다")
case is Pupils:
    print("jason은 학생입니다")
case is HumanBeing:
    print("jason은 사람입니다")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다")
} //jason은 대학생입니다


//MARK: - 업 캐스팅
//as를 사용하여 부모클래스의 인스턴스로 사용할 수 있도록
//컴파일러에게 타입정보를 전환해줍니다
//Any 혹은 AnyObject로도 타입정보를 변환할 수 있습니다
//암시적으로 처리되므로 생략해도 무방합니다

var mike: HumanBeing = UniversityPupils() as HumanBeing
var jenny: Pupils = Pupils()
//var jina: UniversityPupils = HumanBeing() as UniversityPupils : 컴파일 오류
var jina: Any = HumanBeing() as Any //as Any 생략 가능


//MARK: - 다운 캐스팅
//as? 또는 as!를 사용하여
//자식 클래스의 인스턴스로 사용할 수 있도록
//컴파일러에게 인스턴스의 타입정보를 전환해줍니다


//MARK: - 조건부 다운 캐스팅
//as?

var optionalCasted: Pupils?

optionalCasted = mike as? UniversityPupils
optionalCasted = jenny as? UniversityPupils //nil
optionalCasted = jina as? UniversityPupils //nil
optionalCasted = jina as? Pupils //nil


//MARK: - 강제 다운 캐스팅
//as!

var forcedCasted: Pupils

forcedCasted = mike as! UniversityPupils
//forcedCasted = jenny as! UniversityPupils : 런타임 오류
//forcedCasted = jina as! UniversityPupils : 런타임 오류
//forcedCasted = jina as! Pupils : 런타임 오류

//활용
func doSomethingWithSwitch(someone: HumanBeing) {
    switch someone {
    case is UniversityPupils:
        (someone as! UniversityPupils).goToMT()
    case is Pupils:
        (someone as! Pupils).goToSchool()
    case is HumanBeing:
        (someone as! HumanBeing).breath()
    }
}

doSomethingWithSwitch(someone: mike as HumanBeing)
//멤버십 트레이닝을 갑니다 신남!

doSomethingWithSwitch(someone: mike)
//멤버십 트레이닝을 갑니다 신남!

doSomethingWithSwitch(someone: jenny)
//등교를 합니다

doSomethingWithSwitch(someone: yeogom)
//숨을 쉽니다

func doSomething(someone: HumanBeing) {
    if let universityPupils = someone as? UniversityPupils {
        universityPupils.goToMT()
    } else if let pupils = someone as? Pupils {
        pupils.goToSchool()
    } else if let humanbeing = someone as? HumanBeing {
        humanbeing.breath()
    }
}

doSomething(someone: mike as HumanBeing)
//멤버십 트레이닝을 갑니다 신남!

doSomething(someone: mike)
//멤버십 트레이닝을 갑니다 신남!

doSomething(someone: jenny)
//등교를 합니다

doSomething(someone: yeogom)
//숨을 쉽니다


//assert와 guard

//애플리케이션이 동작 도중에 생성하는 다양한 결과값을
//동적으로 확인하고 안전하게 처리할 수 있도록
//확인하고 빠르게 처리할 수 있습니다


//MARK: - Assertion
//assert(_:_:file:line:) 함수를 사용합니다
//assert 함수는 디버깅 모드에서만 동작합니다
//배포하는 애플리케이션에서는 제외됩니다
//주로 디버깅 중 조건의 검증을 위하여 사용합니다

var someIntA: Int = 0

assert(someIntA == 0, "someIntA != 0")

someIntA = 1
//assert(someIntA == 0) : 동작 중지, 검증 실패
//assert(someIntA == 0, "someIntA != 0") : 동작 중지, 검증 실패

func functionWithAssert(age: Int?) {
    assert(age != nil, "age == nil")
    
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다")
    print("당신의 나이는 \(age!)세입니다")
}

functionWithAssert(age: 50)
//functionWithAssert(age: -1) : 동작 중지, 검증 실패
//functionWithAssert(age: nil) : 동작 중지, 검증 실패


//MARK: - Early Exit
//guard를 사용하여 잘못된 값의 전달 시
//특정 실행구문을 빠르게 종료합니다
//디버깅 모드 뿐만 아니라 어떤 조건에서도 동작합니다
//guard의 else 블럭 내부에는
//특정 코드블럭을 종료하는 지시어(return, break 등)가
//꼭 있어야 합니다
//타입 캐스팅, 옵셔널과도 자주 사용됩니다
//그 외 단순 조건 판단 후 빠르게 종료할 때도 용이합니다

func functionWithGuard(age: Int?) {
    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
        print("나이값 입력이 잘못되었습니다")
        return
    }
    
    guard unwrappedAge < 100 else {
        return
    }
    
    /*
    바로 위 guard문은 다음 if문을 축약한 것과 같습니다
    if unwrappedAge < 100 {
        
    } else {
        return
    }
    */
    
    print("당신의 나이는 \(unwrappedAge)세입니다")
}

var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
//1
//2

func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }
    
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    
    print("\(name): \(age)")
}

someFunction(info: ["name": "jenny", "age": "10"]) //실행 안됨
someFunction(info: ["name": "mike"]) //실행 안됨
someFunction(info: ["name": "yagom", "age": 10]) //yagom: 10


//프로토콜

//프로토콜은 특정 역할을 수행하기 위한
//메서드, 프로퍼티, 이니셜라이저 등의 요구사항을 정의합니다.

//구조체, 클래스, 열거형은 프로토콜을 채택(Adopted)해서
//프로토콜의 요구사항을 실제로 구현할 수 있습니다
//어떤 프로토콜의 요구사항을 모두 따르는 타입은
//그 '프로토콜을 준수한다(Confirm)'고 표현합니다
//프로토콜의 요구사항을 충족시키려면 프로토콜이 제시하는 기능을
//모두 구현해야 합니다


//MARK: - 정의 문법

/*
protocol 프로토콜 이름 {
    /* 정의부 */
}
 */

protocol Talkable {
    
    //프로퍼티 요구
    //프로퍼티 요구는 항상 var 키워드를 사용합니다
    //get은 읽기만 가능해도 상관 없다는 뜻이며
    //get과 set을 모두 명시하면
    //읽기 쓰기 모두 가능한 프로퍼티여야 합니다
    var topic: String { get set }
    var language: String { get }
    
    //메서드 요구
    func talk()
    
    //이니셜라이저 요구
    init(topic: String, language: String)
}


//MARK: - 프로토콜 채택 및 준수

//HumanA 구조체는 Talkable 프로토콜을 채택했습니다
struct HumanA: Talkable {
    var topic: String
    let language: String //읽기를 만족하면 되므로 var도 상관 없음
    
//    //읽기전용 프로퍼티 요구는 연산 프로퍼티로 대체가 가능합니다
//    var language: String { return "한국어" } //get
//
//    //물론 읽기, 쓰기 프로퍼티도 연산 프로퍼티로 대체할 수 있습니다
//    var subject: String = ""
//    var topic: String {
//        set {
//            self.subject = newValue
//        }
//        get {
//            return self.subject
//        }
//    }
    
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다")
    }
    
    init(topic: String, language: String) {
        self.topic = topic
        self.language = language
    }
}


//MARK: - 프로토콜 상속

//프로토콜은 클래스와 다르게 다중상속이 가능합니다

/*
protocol 프로토콜 이름: 부모 프로토콜 이름 목록 {
    /* 정의부 */
}
 */

protocol Readable {
    func read()
}

protocol Writeable {
    func write()
}

protocol ReadSpeakable: Readable {
//    func read()
    func speak()
}

protocol ReadWriteSpeakable: Readable, Writeable {
//    func read()
//    func write()
    func speak()
}

struct SomeType: ReadWriteSpeakable {
    func read() {
        print("Read")
    }
    
    func write() {
        print("Write")
    }
    
    func speak() {
        print("Speak")
    }
}


//MARK: - 클래스 상속과 프로토콜

//클래스에서 상속과 프로토콜 채택을 동시에 하려면
//상속받으려는 클래스를 먼저 명시하고
//그 뒤에 채택할 프로토콜 목록을 작성합니다

class SuperClass: Readable {
    func read() { print("read") }
}

class SubClass: SuperClass, Writeable, ReadSpeakable {
    func write() { print("write") }
    func speak() { print("speak") }
}


//MARK: - 프로토콜 준수 확인

//인스턴스가 특정 프로토콜을 준수하는지 확인할 수 있습니다
//is, as 연산자 사용

let sup: SuperClass = SuperClass()
let sub: SubClass = SubClass()

var someAnys: Any = sup
someAnys is Readable //true
someAnys is ReadSpeakable //false

someAnys = sub
someAnys is Readable //true
someAnys is ReadSpeakable //true

someAnys = sup

if let someReadable: Readable = someAnys as? Readable {
    someReadable.read()
} //read

if let someReadSpeakable: ReadSpeakable = someAnys as? ReadSpeakable {
    someReadSpeakable.speak()
} //동작하지 않음

someAnys = sub

if let someReadable: Readable = someAnys as? Readable {
    someReadable.read()
} //read


//익스텐션

//익스텐션은 구조체, 클래스, 열거형, 프로토콜 타입에
//새로운 기능을 추가할 수 있는 기능입니다
//기능을 추가하려는 타입의 구현된 소스 코드를
//알지 못하거나 볼 수 없다 해도,
//타입만 알고 있다면 그 타입의 기능을 확장할 수도 있습니다

//익스텐션으로 추가할 수 있는 기능
//연산 타입 프로퍼티 / 연산 인스턴스 프로퍼티
//타입 메서드 / 인스턴스 메서드
//이니셜라이저
//서브스크립트
//중첩 타입
//특정 프로토콜을 준수할 수 있도록 기능 추가

//기존에 존재하는 기능을 재정의할 수는 없습니다


//MARK: - 정의 문법

/*
extension 확장할 타입 이름 {
    /* 타입에 추가될 새로운 기능 구현 */
}
 */

//익스텐션은 기존에 존재하는 타입이
//추가적으로 다른 프로토콜을 채택할 수 있도록
//확장할 수도 있습니다

/*
extension 확장할 타입 이름: 프로토콜1, 프로토콜2, 프로토콜3... {
    /* 프로토콜 요구사항 구현 */
}
 */


//MARK: - 익스텐션 구현

//MARK: - 연산 프로퍼티 추가

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven) //false
print(2.isEven) //true
print(1.isOdd) //true
print(2.isOdd) //false

var number: Int = 3
print(number.isEven) //false
print(number.isOdd) //true


//MARK: - 메서드 추가

extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
}

print(3.multiply(by: 2)) //6
print(4.multiply(by: 5)) //20

number = 3
print(number.multiply(by: 2)) //6
print(number.multiply(by: 3)) //9


//MARK: - 이니셜라이저 추가

extension String {
    init(intTypeNumber: Int) {
        self = "\(intTypeNumber)"
    }
    
    init(doubleTypeNumber: Double) {
        self = "\(doubleTypeNumber)"
    }
}

let stringFromInt: String = String(intTypeNumber: 100)
// "100"

let stringFromDouble: String = String(doubleTypeNumber: 100.0)
// "100.0"


//오류처리


//MARK: - 오류표현
//Error 프로토콜과 (주로) 열거형을 통해서 오류를 표현합니다

/*
enum 오류종류이름: Error {
    case 종류1
    case 종류2
    case 종류3
    ...
}
 */

//자판기 동작 오류의 종류를 표현한 VendingMachineError 열거형
enum VendingMachineError: Error {
    case invalidInput
    case insufficientFunds(moneyNeeded: Int)
    case outOfStock
}


//MARK: - 함수에서 발생한 오류 던지기

//자판기 동작 도중 발생한 오류 던지기
//오류 발생의 여지가 있는 메서드는 throws를 사용하여
//오류를 내포하는 함수임을 표시합니다
class VendingMachine {
    let itemPrice: Int = 100
    var itemCount: Int = 5
    var deposited: Int = 0
    
    //돈 받기 메서드
    func receiveMoney(_ money: Int) throws {
        
        //입력한 돈이 0이하면 오류를 던집니다
        guard money > 0 else {
            throw VendingMachineError.invalidInput
        }
        
        //오류가 없으면 정상처리를 합니다
        self.deposited += money
        print("\(money)원 받음")
    }
    
    //물건 팔기 메서드
    func vend(numberOfItems numberOfItemsToVend: Int) throws -> String {
        
        //원하는 아이템의 수량이 잘못 입력되었으면 오류를 던집니다
        guard numberOfItemsToVend > 0 else {
            throw VendingMachineError.invalidInput
        }
        
        //구매하려는 수량보다 미리 넣어둔 돈이 적으면 오류를 던집니다
        guard numberOfItemsToVend * itemPrice <= deposited else {
            let moneyNeeded: Int
            moneyNeeded = numberOfItemsToVend * itemPrice - deposited
            
            throw VendingMachineError.insufficientFunds(moneyNeeded: moneyNeeded)
        }
        
        //구매하려는 수량보다 요구하는 수량이 많으면 오류를 던집니다
        guard itemCount >= numberOfItemsToVend else {
            throw VendingMachineError.outOfStock
        }
        
        //오류가 없으면 정상처리를 합니다
        let totalPrice = numberOfItemsToVend * itemPrice
        
        self.deposited -= totalPrice
        self.itemCount -= numberOfItemsToVend
        
        return "\(numberOfItemsToVend)개 제공함"
    }
}

//자판기 인스턴스
let machine: VendingMachine = VendingMachine()

//판매 결과를 전달받을 변수
var resultSell: String?


//MARK: - 오류처리

//오류발생의 여지가 있는 throws 함수(메서드)는
//try를 사용하여 호출해야합니다
//try, try?, try!


//MARK: - do-catch

//오류발생의 여지가 있는 throws 함수(메서드)는
//do-catch 구문을 활용하여
//오류발생에 대비합니다


do {
    try machine.receiveMoney(0)
} catch VendingMachineError.invalidInput {
    print("입력이 잘못되었습니다")
} catch VendingMachineError.insufficientFunds(let moneyNeeded) {
    print("\(moneyNeeded)원이 부족합니다")
} catch VendingMachineError.outOfStock {
    print("수량이 부족합니다")
} //입력이 잘못되었습니다


do {
    try machine.receiveMoney(300)
} catch /*(let error)*/ {
    
    switch error {
    case VendingMachineError.invalidInput:
        print("입력이 잘못되었습니다")
    case VendingMachineError.insufficientFunds(let moneyNeeded):
        print("\(moneyNeeded)원이 부족합니다")
    case VendingMachineError.outOfStock:
        print("수량이 부족합니다")
    default:
        print("알 수 없는 오류 \(error)")
    }
} //300원 받음

do {
    resultSell = try machine.vend(numberOfItems: 4)
} catch {
    print(error)
} //insufficientFunds(moneyNeeded: 100)

//do {
//    resultSell = try machine.vend(numberOfItems: 4)
//}


//MARK: - try? 와 try!

//try?
//별도의 오류처리 결과를 통보받지 않고
//오류가 발생했으면 결과값을 nil로 돌려받을 수 있습니다
//정상 동작 후에는 옵셔널 타입으로 정상 반환값을 돌려 받습니다

resultSell = try? machine.vend(numberOfItems: 2)
resultSell //Optional("2개 제공함")

resultSell = try? machine.vend(numberOfItems: 2)
resultSell //nil

//try!
//오류가 발생하지 않을 것이라는 강력한 확신을 가질 때
//try!를 사용하면 정상 동작 후에 바로 결과값을 돌려받습니다
//오류가 발생하면 런타임 오류가 발생하여
//애플리케이션 동작이 중지됩니다

resultSell = try! machine.vend(numberOfItems: 1)
resultSell //1개 제공함

//resultSell = try! machine.vend(numberOfItems: 1) : 런타임 오류


//고차함수

//전달인자로 함수를 전달받거나
//함수실행의 결과를 함수로 반환하는 함수

//map, filter, reduce


//MARK: - map
//컨테이너 내부의 기존 데이터를 변형(transform)하여 새로운 컨테이너 생성

let numbers: [Int] = [0, 1, 2, 3, 4]
var doubledNumbers: [Int]
var stringss: [String]


//MARK: - 기존의 for 구문 사용
doubledNumbers = [Int]()
stringss = [String]()

for number in numbers {
    doubledNumbers.append(number * 2)
    stringss.append("\(number)")
}

print(doubledNumbers) //[0, 2, 4, 6, 8]
print(stringss) //["0", "1", "2", "3", "4"]


//MARK: - map 메서드 사용
//numbers의 각 요소를 2배하여 새로운 배열 반환
doubledNumbers = numbers.map({ (number: Int) -> Int in
    return number * 2
})


//numbers의 각 요소를 문자열로 변환하여 새로운 배열 반환
stringss = numbers.map({ (number: Int) -> String in
    return "\(number)"
})

print(doubledNumbers) //[0, 2, 4, 6, 8]
print(stringss) //["0", "1", "2", "3", "4"]

//매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
doubledNumbers = numbers.map { $0 * 2 }
print(doubledNumbers) //[0, 2, 4, 6, 8]

stringss = numbers.map { "\($0)" }
print(stringss) //["0", "1", "2", "3", "4"]


//MARK: - filter
//컨테이너 내부의 값을 걸러서 새로운 컨테이너로 추출

//MARK: - 기존의 for 구문 사용
//변수 사용에 주목하세요
var filtered: [Int] = [Int]()

for number in numbers {
    if number % 2 == 0 {
        filtered.append(number)
    }
}

print(filtered) //[0, 2, 4]


//MARK: - filter 메서드 사용
//numbers의 요소 중 짝수를 걸러내어 새로운 배열로 반환
let evenNumbers: [Int] = numbers.filter {
    (number: Int) -> Bool in
    
    return number % 2 == 0
}

print(evenNumbers) //[0, 2, 4]


//매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
let oddNumbers: [Int] = numbers.filter { $0 % 2 != 0 }

print(oddNumbers) //[1, 3]


//MARK: - reduce
//컨테이너 내부의 콘텐츠를 하나로 통합

let someNumbers: [Int] = [2, 8, 15]


//MARK: - 기존의 for 구문 사용
//변수 사용에 주목하세요
var resultss: Int = 0

//someNumbers의 모든 요소를 더합니다
for number in someNumbers {
    resultss += number
}

print(resultss) //25


//MARK: - reduce 메서드 사용
//초기값이 0이고 someNumbers 내부의 모든 값을 더합니다
let sumss: Int = someNumbers.reduce(0, {
    (first: Int, second: Int) -> Int in
    
    return first + second
})

print(sumss) //25


//초기값이 0이고 someNumbers 내부의 모든 값을 뺍니다
var subss: Int = someNumbers.reduce(0, {
    (first: Int, second: Int) -> Int in
    
    return first - second
})

print(subss) //-25


//초기값이 3이고 someNumbers 내부의 모든 값을 더합니다
let sumFromThree = someNumbers.reduce(3, { $0 + $1 })

print(sumFromThree) //28

//초기값이 1이고 someNumbers 내부의 모든 값을 곱합니다
print(someNumbers.reduce(1, { $0 * $1 })) //240

//후행 클로저 적용
print(someNumbers.reduce(1) { $0 * $1 }) //240
