

let env="development"
let maxValue:Int


if env=="development1"{
    maxValue=100}
else{
    maxValue=10
}


print("value maxValue = \(maxValue)")

var WelcomeMessage:String
WelcomeMessage="Hello"
print(WelcomeMessage)

let 🐶 = "西瓜"
print("🐶 names \(🐶)")

let 密码="password Error"
print("密码 names \(密码)")


print("Line--------")

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
// languageName = "Swift++"
print(languageName)

var value="Xigua"
print("my name is \(value)")
//我是单行注释
/* 我是多行注释
* 我是多行注释
*/


/* This is the start of the first multiline comment.
    /* This is the second, nested multiline comment. */
This is the end of the first multiline comment. */

let val1 = UInt8.min  // minValue is equal to 0, and is of type UInt8
let val2 = UInt8.max  // maxValue is equal to 255, and is of type UInt8

print("MinValue = \(val1)")
print("MaxValue = \(val2)")

let decimalInteger = 17
let binaryInteger:Int8 = -0b1000000      // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

print("binaryInteger = \(binaryInteger)")


let hexadecimalDouble = 1_000_000.000_000_1
#if true
print("hexadecimalDouble =\(hexadecimalDouble)")
#endif 

let tooBig:Int = Int( Int8.max) + 1 
print("tooBig = \(tooBig)")

// let twoThousand: UInt16 = 2_000
// let one: UInt8 = 1
// let twoThousandAndOne = twoThousand + UInt16(one)


// let t1:Int = 4
// let t2 = 0.324
// let t3 = Double(t1) + t2 

// print("t3 = \(t3)")


let t1:Int = 4
let t2 = 1.9324
let t3 = t1 + Int(t2)
let t4 = Int(t2);
print("t4  = \(t4)")

print("t3 = \(t3)")

var isFuck:Bool

let YesFuck = true


typealias AudioSample = UInt16

var value1 :AudioSample
value1 = AudioSample.min 

let isFoo = true

if isFoo{
    print("isFoo is true")
}else{
    print("isFoo is not true")
}

let i=1
if i==1 {
    print("condition is ok")
}

let http400Err = ( 404 , "Error")

let (ECode,EMsg) = http400Err

print("ECode = \(ECode)")
print("EMsg = \(EMsg)")

let (justTheStatusCode,_) = http400Err
print("The status code is \(justTheStatusCode)")

print("index 0 of Http400Err = \(http400Err.0)")
print("index 1 of Http400Err = \(http400Err.1)")


let Http200Status = (statusCode:20, description: "Ok")
print("http200status.statusCode = \(Http200Status.statusCode) ")
print("http200Status.description = \(Http200Status.description)")

/*
let possibleNumber = "Hello"
let convertedNumber = Int(possibleNumber)
print("convertednumber = \(convertedNumber)")


var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
if serverResponseCode != nil { 
    print("serverResponseCode Not nil: \(serverResponseCode)")
}else{
    print("serverResponseCode is nil")
}

*/
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// print("convertedNumber = \(convertedNumber)")


print("convertedNumber = \(convertedNumber!)")

if let getOpt=convertedNumber {
    print("getOpt not nil Value = \(getOpt)")
}else{
    print("get nothing")
}

var MaybeNil:Int?

let responseCode = MaybeNil ?? 0
print("Server response code: \(responseCode)")

print("------------------------")
print("------------------------")

var serverCode: Int? = 404
// serverCode = 401
// if serverCode != nil{


print("ServerCode = \(serverCode!)")
// }



print("------------------------")
print("------------------------test Nil")


var f1:Int?
f1=5

if f1 != nil{
    print("f1 not nil  and value = \(f1!)")
}else{
    print("f1 is nil")
}